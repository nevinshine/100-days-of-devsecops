# Define the output file name
OUTPUT="security_audit.txt"

echo "--- SECURITY AUDIT REPORT ---" > $OUTPUT
date >> $OUTPUT

echo "" >> $OUTPUT
echo "[*] CHECKING FOR USERS WITH BASH SHELL (Potential Humans):" >> $OUTPUT
# Explain: grep looks for users who have a login shell
cat /etc/passwd | grep -E "bash|sh" >> $OUTPUT

echo "" >> $OUTPUT
echo "[*] CHECKING FOR ROOT PRIVILEGES (UID 0):" >> $OUTPUT
# Explain: awk looks for User ID 0 (which is always Root)
awk -F: '($3 == "0") {print}' /etc/passwd >> $OUTPUT

echo "" >> $OUTPUT
echo "[*] AUDIT COMPLETE. SAVED TO $OUTPUT"
