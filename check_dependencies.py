try:
    import numpy
    import pandas
    import sklearn  # scikit-learn should be imported as sklearn
    import tensorflow
    import torch
    import transformers
    print("All dependencies are installed correctly.")
except ImportError as e:
    print(f"Error: {e}")
