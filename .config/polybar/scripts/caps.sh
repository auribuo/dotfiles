xset q | grep "LED mask:  00000003" > /dev/null
if [ $? -eq 0 ]; then
  echo ""
else
  echo ""
fi
