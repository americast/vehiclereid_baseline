import torch
from torch import nn
from torch import optim
import torch.nn.functional as F
import torchvision.datasets.mnist
from networks.resnet import resnet50

class siamese_model(nn.Module):
   def __init__(self):
      super().__init__()
      self.resnet = resnet50(num_classes=256)
      self.fc_1 = nn.Linear(4096, 512)
      self.fc_2 = nn.Linear(512, 2)


   def forward(self, data, feat_in = None):

      if feat_in == None:
            _, x1 = self.resnet(data[0])
            _, x2 = self.resnet(data[1])
            x1, x2 = x1.squeeze(), x2.squeeze()
      else:
            x1 = feat_in[0]
            x2 = feat_in[1]

      merged = torch.cat([x1, x2], dim = -1)
      x = F.relu(merged)
      y1 = F.relu(self.fc_1(x))
      y = F.softmax(self.fc_2(y1))



      return y, (x1, x2)