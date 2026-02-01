import streamlit as st
import pandas as pd

st.set_page_config(page_title="Netflix Dashboard", layout="wide")

st.title("📊 Netflix Data Analysis")

df = pd.read_csv("cleaned_netflix_dataset_analysis.csv")
st.dataframe(df.head())
