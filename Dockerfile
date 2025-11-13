# استخدم صورة Python الرسمية كأساس
FROM python:3.10-slim

# إعداد مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ الملفات إلى داخل الحاوية
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

# تعريف المنفذ الذي هيشتغل عليه التطبيق
EXPOSE 5000
# مصطفي
# الأمر اللي بيشغل التطبيق
CMD ["python", "app.py"]
