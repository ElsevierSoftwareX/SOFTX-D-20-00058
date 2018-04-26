HCLclustering <-function(Data,ClusterNo,PlotIt=FALSE,...){
  # Cls=NeuralGas(Data,ClusterNo=2)
  #  
  # liefert eine Klassenzuweisung
  # INPUT
  # Data[1:n,1:d]             Der Datensatz
  
  # ClusterNo  in soviele Cluster werden die daten eingeteilt
  
  # OUTPUT
  # Cls[1:n]                Clusterung der Daten
  #
  # Author: MT 04/2018

  requireNamespace('cclust')
  res=cclust::cclust(x=Data,centers=ClusterNo,method='hardcl',...)
  if(PlotIt){
    requireNamespace('DataVisualizations')
    DataVisualizations::plot3D(Data,res$cluster)
  }
  return(list(Cls=res$cluster,NeuralGasObject=res))
}