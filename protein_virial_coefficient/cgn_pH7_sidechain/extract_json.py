import json
from scipy.constants import Avogadro as NA


ion_strength=["0.005", "0.010", "0.015", "0.020", "0.030", "0.040", "0.060", "0.080", "0.1"]
MW=25273.65 # g/mol
ML_PER_ANGSTROM3 = 1e-24

for molarity in ion_strength:
      filename = f"pmf_{molarity}.json"
      #if not os.path.isfile(filename):
      #    continue
      with open(filename, 'r') as file:
          data = json.load(file)
          B2 = data['B2'] * ML_PER_ANGSTROM3 / MW**2 * NA 
          B2red = data['B2_reduced']
          print(f"{float(molarity) * 1e3} {B2:.3E}")

