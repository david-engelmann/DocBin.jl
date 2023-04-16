import spacy
import os
from spacy.tokens import DocBin

doc_bin = DocBin(store_user_data=False)
nlp = spacy.load("en_core_web_sm")

doc = nlp("Man, deviated leather in this 911\nBend a corner, I'm on Hayes Street copping a windbreaker")
doc_bin.add(doc=doc)

print(os.getcwd())
print(os.listdir(os.getcwd()))
nlp.to_disk("test/assets/test_nlp")
doc_bin.to_disk("test/assets/test_doc_bin.spacy")
