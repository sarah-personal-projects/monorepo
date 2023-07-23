#!/bin/bash

# 이전 배포된 파일들 삭제 (옵션)
rm -rf /home/ubuntu/deploy/*

# 새로 배포된 파일들 압축 해제
unzip /home/ubuntu/deploy.zip -d /home/ubuntu/deploy

# 권한 설정
chown -R root:root /home/ubuntu/deploy
chmod -R 755 /home/ubuntu/deploy

# (선택적으로) 서비스 재시작 등의 추가 작업 수행
# systemctl restart your_service_name

# (선택적으로) 환경 변수 설정 또는 환경 설정 파일 변경
# export YOUR_ENV_VARIABLE=value
# sed -i 's/original_text/replacement_text/g' /path/to/config_file

# (선택적으로) 다른 사용자 권한으로 실행하는 작업 수행
# sudo -u some_user some_command

# 필요한 추가 작업 수행...

# (옵션) 스크립트 실행이 성공적으로 완료되었음을 로그로 출력 (필요에 따라 사용)
echo "Deploy script completed successfully!"

exit 0 # 스크립트가 정상적으로 종료되었음을 나타내는 값