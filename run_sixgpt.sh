#!/bin/bash

LANGUAGE="EN"

set_language() {
  case $LANGUAGE in
    EN)
      # English messages
      M_ENTER_KEY="Enter your VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="The SixGPT Miner repository already exists."
      M_CLONE_REPO="Cloning the SixGPT Miner repository..."
      M_NO_DOCKER="Docker not found."
      M_NO_COMPOSE="Docker Compose not found."
      M_RUNNING="Running SixGPT Miner..."
      M_CHECK_LOG="Checking Ollama logs..."
      M_SELECT_ACTION="Select the next action:"
      M_USE_GPU="Do you want to use GPU? (y/n)"
      M_GPU_NOT_FOUND="No GPU found. Do you want to continue without GPU? (y/n)"
      M_START_COMPOSE="1) Start SixGPT Miner"
      M_STOP_COMPOSE="2) Stop Miner"
      M_PULL_LLAMA="3) Pull llama3.2 model (if download error occurs)"
      M_CHECK_LOGS="5) Check logs"
      M_CHECK_UPDATE="4) Check for updates"
      M_ENABLE_GPU="6) Re-enable GPU"
      M_REMOVE_GPU="7) Remove GPU"
      M_RESTART_MINER="8) Restart Miner"
      M_EXIT="9) Exit"
      M_INVALID="Invalid choice, please try again."
      M_EXIT_SCRIPT="Exiting script."
      M_UPDATE_PULL="Pulling latest updates from main..."
      M_SOURCE_BASHRC="Reloading ~/.bashrc..."
      M_INSTALL_DOCKER="Docker and Docker Compose not found. Do you want to install them? (y/n)"
      M_INSTALLING_DOCKER="Installing Docker..."
      M_INSTALLING_COMPOSE="Installing Docker Compose..."
      M_DOCKER_INSTALLED="Docker has been installed and started."
      M_COMPOSE_INSTALLED="Docker Compose has been installed."
      M_FILE_NOT_FOUND="File $DOCKER_COMPOSE_FILE not found. Make sure this file is in the correct directory."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE found."
      M_PULLING_LLAMA="Pulling llama3.2 model..."
      M_LOGS_CHECKED="Logs have been checked."
      M_GPU_CONFIG_ADDED="GPU configuration has been added."
      M_GPU_CONFIG_REMOVED="GPU configuration has been removed. The original copy is saved as docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="No GPU configuration found to remove."
      M_DOCKER_INSTALLED_MSG="Docker is installed."
      M_COMPOSE_INSTALLED_MSG="Docker Compose is installed."
      M_COMPOSE_FILE_FOUND="docker-compose.yml configuration found."
      M_CREATE_NEW_CONFIG="Do you want to create a new configuration? (y/n):"
      M_SKIPPED_NEW_CONFIG="Skipped creating a new configuration."
      M_CHECKING_GPU="Checking GPU..."
      M_DETECTED_GPU="Detected NVIDIA/AMD GPU:"
      M_CHECKING_CPU="Checking CPU..."
      M_DETECTED_CPU="Detected CPU:"
      M_CHECKING_RAM="Checking RAM..."
      M_TOTAL_RAM="Total RAM: , Available RAM: "
      M_TOTAL_SWAP="Total Swap: , Free Swap: "
      M_ENV_FILE_NOT_FOUND=".env file not found. Creating a new .env file with necessary configurations."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY is not set. Please enter your private key (64-character hexadecimal):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    ID)
      # Indonesian messages
      M_ENTER_KEY="Masukkan VANA_PRIVATE_KEY Anda: "
      M_REPO_EXISTS="Repository SixGPT Miner sudah ada."
      M_CLONE_REPO="Mengkloning repository SixGPT Miner..."
      M_NO_DOCKER="Docker tidak ditemukan."
      M_NO_COMPOSE="Docker Compose tidak ditemukan."
      M_RUNNING="Menjalankan SixGPT Miner..."
      M_CHECK_LOG="Memeriksa log Ollama..."
      M_SELECT_ACTION="Pilih tindakan selanjutnya:"
      M_USE_GPU="Apakah Anda ingin menggunakan GPU? (y/n)"
      M_GPU_NOT_FOUND="Tidak ada GPU yang ditemukan. Apakah Anda ingin melanjutkan tanpa GPU? (y/n)"
      M_START_COMPOSE="1) Mulai SixGPT Miner"
      M_STOP_COMPOSE="2) Hentikan Miner"
      M_PULL_LLAMA="3) Pull model llama3.2 (jika terjadi error download)"
      M_CHECK_LOGS="5) Periksa log"
      M_CHECK_UPDATE="4) Periksa pembaruan"
      M_ENABLE_GPU="6) Aktifkan kembali GPU"
      M_REMOVE_GPU="7) Hapus GPU"
      M_RESTART_MINER="8) Restart Miner"
      M_EXIT="9) Keluar"
      M_INVALID="Pilihan tidak valid, silakan coba lagi."
      M_EXIT_SCRIPT="Keluar dari skrip."
      M_UPDATE_PULL="Menarik pembaruan terbaru dari main..."
      M_SOURCE_BASHRC="Memuat ulang ~/.bashrc..."
      M_INSTALL_DOCKER="Docker dan Docker Compose tidak ditemukan. Apakah Anda ingin menginstalnya? (y/n)"
      M_INSTALLING_DOCKER="Menginstal Docker..."
      M_INSTALLING_COMPOSE="Menginstal Docker Compose..."
      M_DOCKER_INSTALLED="Docker telah diinstal dan dimulai."
      M_COMPOSE_INSTALLED="Docker Compose telah diinstal."
      M_FILE_NOT_FOUND="File $DOCKER_COMPOSE_FILE tidak ditemukan. Pastikan file ini berada di direktori yang benar."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE ditemukan."
      M_PULLING_LLAMA="Mengambil model llama3.2..."
      M_LOGS_CHECKED="Log telah diperiksa."
      M_GPU_CONFIG_ADDED="Konfigurasi GPU telah ditambahkan."
      M_GPU_CONFIG_REMOVED="Konfigurasi GPU telah dihapus. Salinan asli disimpan sebagai docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="Tidak ada konfigurasi GPU yang ditemukan untuk dihapus."
      M_DOCKER_INSTALLED_MSG="Docker telah terinstal."
      M_COMPOSE_INSTALLED_MSG="Docker Compose telah terinstal."
      M_COMPOSE_FILE_FOUND="Konfigurasi docker-compose.yml ditemukan."
      M_CREATE_NEW_CONFIG="Apakah Anda ingin membuat konfigurasi baru? (y/n):"
      M_SKIPPED_NEW_CONFIG="Melewatkan pembuatan konfigurasi baru."
      M_CHECKING_GPU="Memeriksa GPU..."
      M_DETECTED_GPU="GPU NVIDIA/AMD terdeteksi:"
      M_CHECKING_CPU="Memeriksa CPU..."
      M_DETECTED_CPU="CPU terdeteksi:"
      M_CHECKING_RAM="Memeriksa RAM..."
      M_TOTAL_RAM="Total RAM: , RAM Tersedia: "
      M_TOTAL_SWAP="Total Swap: , Swap Gratis: "
      M_ENV_FILE_NOT_FOUND="File .env tidak ditemukan. Membuat file .env baru dengan konfigurasi yang diperlukan."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY belum diatur. Silakan masukkan kunci pribadi Anda (heksadesimal 64 karakter):"
      M_CHECK_CPU_ERR="Gagal mendeteksi tipe CPU atau jumlah core."
      M_AVAILABLE_RAM="RAM Tersedia"
      M_INVALID_PK="Format VANA_PRIVATE_KEY tidak valid dalam file .env. Harap masukkan kunci heksadesimal 64 karakter yang valid."
      M_VALID_PK="VANA_PRIVATE_KEY valid dan dimuat dari .env."
      M_INPUT_NETWORK="Silakan masukkan jaringan (default adalah 'mainnet')"
      M_INPUT_API_URL="Silakan masukkan URL API (default adalah 'http://ollama:11434/api')"
      M_SET_MSG="disetel ke"
      M_INSTALL_REJECTION="Pengguna memilih untuk tidak menginstal"
      M_GPU_REJECT="Pengguna memilih untuk menggunakan GPU"
      M_FILE_CREATION="Membuat file baru dengan konfigurasi default"
      M_FILE_CREATED="telah dibuat dengan konfigurasi default"
      M_GPU_CONFIG_ADD="Konfigurasi GPU ditambahkan ke"
      M_NO_COMPATIBLE_GPU="Tidak ada GPU yang kompatibel ditemukan"
      M_CONTINUE_WITHOUT_GPU="Lanjutkan tanpa GPU? (y/t)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="Pilihan pengguna untuk melanjutkan tanpa GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="Pengguna memilih untuk tidak melanjutkan tanpa GPU"
      M_GPU_CONFIGURATION_ADD="Konfigurasi GPU ditambahkan ke"
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="Tidak ada konfigurasi GPU yang ditemukan untuk dihapus"
      M_GPU_CONFIGURATION_ENABLE="Mengaktifkan konfigurasi GPU dengan membuat ulang docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Mengaktifkan konfigurasi CPU dengan membuat ulang docker-compose.yml"
      M_CONFIGURATION_REMOVED="konfigurasi dihapus"
      M_CONFIGURATION_BACK_UP="Cadangan asli disimpan sebagai docker-compose.yml.bak."
      M_CREATED_DOCKER_COMPOSE="File $DOCKER_COMPOSE_FILE baru dibuat dengan"
      M_REMOVE_DOCKER_COMPOSE="Menghapus $DOCKER_COMPOSE_FILE yang ada"
      M_LOG_DISPLAY_GUIDE="Log sedang ditampilkan. Tekan Ctrl+C untuk berhenti melihat log dan kembali ke menu utama"
      M_MINER_RESTART="Memulai ulang penambang"
      M_MINER_STOP="Menghentikan penambang"
      M_MINER_RESTARTED="Penambang dimulai ulang"

      ;;
      # Russian messages
    RU)
      M_ENTER_KEY="Введите ваш VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="Репозиторий SixGPT Miner уже существует."
      M_CLONE_REPO="Клонирование репозитория SixGPT Miner..."
      M_NO_DOCKER="Docker не найден."
      M_NO_COMPOSE="Docker Compose не найден."
      M_RUNNING="Запуск SixGPT Miner..."
      M_CHECK_LOG="Проверка журналов Ollama..."
      M_SELECT_ACTION="Выберите следующее действие:"
      M_USE_GPU="Хотите использовать GPU? (y/n)"
      M_GPU_NOT_FOUND="GPU не обнаружен. Хотите продолжить без GPU? (y/n)"
      M_START_COMPOSE="1) Запустить SixGPT Miner"
      M_STOP_COMPOSE="2) Остановить Miner"
      M_PULL_LLAMA="3) Загрузить модель llama3.2 (если ошибка загрузки)"
      M_CHECK_LOGS="5) Проверить журналы"
      M_CHECK_UPDATE="4) Проверить обновления"
      M_ENABLE_GPU="6) Снова включить GPU"
      M_REMOVE_GPU="7) Удалить GPU"
      M_RESTART_MINER="8) Перезапустить Miner"
      M_EXIT="9) Выход"
      M_INVALID="Недействительный выбор, попробуйте еще раз."
      M_EXIT_SCRIPT="Выход из скрипта."
      M_UPDATE_PULL="Получение последних обновлений из main..."
      M_SOURCE_BASHRC="Перезагрузка ~/.bashrc..."
      M_INSTALL_DOCKER="Docker и Docker Compose не найдены. Вы хотите их установить? (y/n)"
      M_INSTALLING_DOCKER="Установка Docker..."
      M_INSTALLING_COMPOSE="Установка Docker Compose..."
      M_DOCKER_INSTALLED="Docker установлен и запущен."
      M_COMPOSE_INSTALLED="Docker Compose установлен."
      M_FILE_NOT_FOUND="Файл $DOCKER_COMPOSE_FILE не найден. Убедитесь, что он находится в правильном каталоге."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE найден."
      M_PULLING_LLAMA="Загрузка модели llama3.2..."
      M_LOGS_CHECKED="Журналы проверены."
      M_GPU_CONFIG_ADDED="Конфигурация GPU добавлена."
      M_GPU_CONFIG_REMOVED="Конфигурация GPU удалена. Оригинальная копия сохранена как docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="Конфигурация GPU не найдена для удаления."
      M_DOCKER_INSTALLED_MSG="Docker установлен."
      M_COMPOSE_INSTALLED_MSG="Docker Compose установлен."
      M_COMPOSE_FILE_FOUND="Конфигурация docker-compose.yml найдена."
      M_CREATE_NEW_CONFIG="Хотите создать новую конфигурацию? (y/n):"
      M_SKIPPED_NEW_CONFIG="Пропущено создание новой конфигурации."
      M_CHECKING_GPU="Проверка GPU..."
      M_DETECTED_GPU="Обнаружен GPU NVIDIA/AMD:"
      M_CHECKING_CPU="Проверка CPU..."
      M_DETECTED_CPU="Обнаружен CPU:"
      M_CHECKING_RAM="Проверка RAM..."
      M_TOTAL_RAM="Всего RAM: 32G, Доступно RAM: 26G"
      M_TOTAL_SWAP="Всего Swap: 8.2G, Свободно Swap: 8.2G"
      M_ENV_FILE_NOT_FOUND="Файл .env не найден. Создание нового файла .env с необходимыми конфигурациями."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY не установлен. Пожалуйста, введите ваш закрытый ключ (64-значный шестнадцатеричный):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    ZH)
      # Chinese messages
      M_ENTER_KEY="请输入您的 VANA_PRIVATE_KEY: "
      M_REPO_EXISTS="SixGPT Miner 仓库已存在。"
      M_CLONE_REPO="正在克隆 SixGPT Miner 仓库..."
      M_NO_DOCKER="未找到 Docker。"
      M_NO_COMPOSE="未找到 Docker Compose。"
      M_RUNNING="正在运行 SixGPT Miner..."
      M_CHECK_LOG="正在检查 Ollama 日志..."
      M_SELECT_ACTION="选择下一个操作："
      M_USE_GPU="您想使用 GPU 吗？ (y/n)"
      M_GPU_NOT_FOUND="未找到 GPU。您想继续不使用 GPU 吗？ (y/n)"
      M_START_COMPOSE="1) 启动 SixGPT Miner"
      M_STOP_COMPOSE="2) 停止 Miner"
      M_PULL_LLAMA="3) 拉取 llama3.2 模型 (如果下载错误)"
      M_CHECK_LOGS="5) 检查日志"
      M_CHECK_UPDATE="4) 检查更新"
      M_ENABLE_GPU="6) 重新启用 GPU"
      M_REMOVE_GPU="7) 删除 GPU"
      M_RESTART_MINER="8) 重启 Miner"
      M_EXIT="9) 退出"
      M_INVALID="无效的选择，请重试。"
      M_EXIT_SCRIPT="退出脚本。"
      M_UPDATE_PULL="正在从主分支获取最新更新..."
      M_SOURCE_BASHRC="重新加载 ~/.bashrc..."
      M_INSTALL_DOCKER="未找到 Docker 和 Docker Compose。您想安装它们吗？ (y/n)"
      M_INSTALLING_DOCKER="正在安装 Docker..."
      M_INSTALLING_COMPOSE="正在安装 Docker Compose..."
      M_DOCKER_INSTALLED="Docker 已安装并已启动。"
      M_COMPOSE_INSTALLED="Docker Compose 已安装。"
      M_FILE_NOT_FOUND="未找到文件 $DOCKER_COMPOSE_FILE。请确保该文件位于正确的目录中。"
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE 找到。"
      M_PULLING_LLAMA="正在拉取 llama3.2 模型..."
      M_LOGS_CHECKED="日志已检查。"
      M_GPU_CONFIG_ADDED="已添加 GPU 配置。"
      M_GPU_CONFIG_REMOVED="已删除 GPU 配置。原始副本已保存为 docker-compose.yml.bak。"
      M_MISSING_GPU_CONFIG="未找到可删除的 GPU 配置。"
      M_DOCKER_INSTALLED_MSG="Docker 已安装。"
      M_COMPOSE_INSTALLED_MSG="Docker Compose 已安装。"
      M_COMPOSE_FILE_FOUND="找到 docker-compose.yml 配置。"
      M_CREATE_NEW_CONFIG="您想创建新的配置吗？ (y/n):"
      M_SKIPPED_NEW_CONFIG="跳过创建新的配置。"
      M_CHECKING_GPU="正在检查 GPU..."
      M_DETECTED_GPU="检测到 NVIDIA/AMD GPU："
      M_CHECKING_CPU="正在检查 CPU..."
      M_DETECTED_CPU="检测到 CPU："
      M_CHECKING_RAM="正在检查 RAM..."
      M_TOTAL_RAM="总 RAM：， 可用 RAM："
      M_TOTAL_SWAP="总 Swap：， 空闲 Swap："
      M_ENV_FILE_NOT_FOUND=".env 文件未找到。正在创建新的 .env 文件，包含必要的配置。"
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY 未设置。请输入您的私钥（64 位十六进制）："
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    TR)
      # Turkish messages
      M_ENTER_KEY="VANA_PRIVATE_KEY'inizi girin: "
      M_REPO_EXISTS="SixGPT Miner deposu zaten mevcut."
      M_CLONE_REPO="SixGPT Miner deposu klonlanıyor..."
      M_NO_DOCKER="Docker bulunamadı."
      M_NO_COMPOSE="Docker Compose bulunamadı."
      M_RUNNING="SixGPT Miner çalıştırılıyor..."
      M_CHECK_LOG="Ollama günlükleri kontrol ediliyor..."
      M_SELECT_ACTION="Sonraki işlemi seçin:"
      M_USE_GPU="GPU kullanmak ister misiniz? (y/n)"
      M_GPU_NOT_FOUND="GPU bulunamadı. GPU olmadan devam etmek ister misiniz? (y/n)"
      M_START_COMPOSE="1) SixGPT Miner'ı başlat"
      M_STOP_COMPOSE="2) Miner'ı durdur"
      M_PULL_LLAMA="3) llama3.2 modelini çek (indirme hatası olursa)"
      M_CHECK_LOGS="5) Günlükleri kontrol et"
      M_CHECK_UPDATE="4) Güncellemeleri kontrol et"
      M_ENABLE_GPU="6) GPU'yu tekrar etkinleştir"
      M_REMOVE_GPU="7) GPU'yu kaldır"
      M_RESTART_MINER="8) Miner'ı yeniden başlat"
      M_EXIT="9) Çık"
      M_INVALID="Geçersiz seçim, lütfen tekrar deneyin."
      M_EXIT_SCRIPT="Betikten çıkılıyor."
      M_UPDATE_PULL="Ana hattan en son güncellemeleri çekiliyor..."
      M_SOURCE_BASHRC="~/.bashrc yeniden yüklüyor..."
      M_INSTALL_DOCKER="Docker ve Docker Compose bulunamadı. Bunları yüklemek ister misiniz? (y/n)"
      M_INSTALLING_DOCKER="Docker yükleniyor..."
      M_INSTALLING_COMPOSE="Docker Compose yükleniyor..."
      M_DOCKER_INSTALLED="Docker yüklendi ve başlatıldı."
      M_COMPOSE_INSTALLED="Docker Compose yüklendi."
      M_FILE_NOT_FOUND="$DOCKER_COMPOSE_FILE dosyası bulunamadı. Lütfen bu dosyanın doğru dizinde olduğundan emin olun."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE bulundu."
      M_PULLING_LLAMA="llama3.2 modeli çekiliyor..."
      M_LOGS_CHECKED="Günlükler kontrol edildi."
      M_GPU_CONFIG_ADDED="GPU yapılandırması eklendi."
      M_GPU_CONFIG_REMOVED="GPU yapılandırması kaldırıldı. Orijinal kopya docker-compose.yml.bak olarak kaydedildi."
      M_MISSING_GPU_CONFIG="Kaldırılacak GPU yapılandırması bulunamadı."
      M_DOCKER_INSTALLED_MSG="Docker yüklendi."
      M_COMPOSE_INSTALLED_MSG="Docker Compose yüklendi."
      M_COMPOSE_FILE_FOUND="docker-compose.yml yapılandırması bulundu."
      M_CREATE_NEW_CONFIG="Yeni bir yapılandırma oluşturmak ister misiniz? (y/n):"
      M_SKIPPED_NEW_CONFIG="Yeni bir yapılandırma oluşturma atlandı."
      M_CHECKING_GPU="GPU kontrol ediliyor..."
      M_DETECTED_GPU="NVIDIA/AMD GPU bulundu:"
      M_CHECKING_CPU="CPU kontrol ediliyor..."
      M_DETECTED_CPU="CPU bulundu:"
      M_CHECKING_RAM="RAM kontrol ediliyor..."
      M_TOTAL_RAM="Toplam RAM: , Kullanılabilir RAM: "
      M_TOTAL_SWAP="Toplam Swap: , Boş Swap: "
      M_ENV_FILE_NOT_FOUND=".env dosyası bulunamadı. Gerekli yapılandırmalarla yeni bir .env dosyası oluşturuluyor."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY ayarlanmamış. Lütfen özel anahtarınızı girin (64 karakter onaltılık):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    HI)
      # Hindi messages
      M_ENTER_KEY="अपना VANA_PRIVATE_KEY दर्ज करें: "
      M_REPO_EXISTS="SixGPT Miner रिपॉजिटरी पहले से मौजूद है।"
      M_CLONE_REPO="SixGPT Miner रिपॉजिटरी क्लोन की जा रही है..."
      M_NO_DOCKER="डॉकर नहीं मिला।"
      M_NO_COMPOSE="डॉकर कंपोज़ नहीं मिला।"
      M_RUNNING="SixGPT Miner चल रहा है..."
      M_CHECK_LOG="ओलामा लॉग की जांच की जा रही है..."
      M_SELECT_ACTION="अगला कार्य चुनें:"
      M_USE_GPU="क्या आप GPU का उपयोग करना चाहते हैं? (y/n)"
      M_GPU_NOT_FOUND="कोई GPU नहीं मिला। क्या आप GPU के बिना जारी रखना चाहते हैं? (y/n)"
      M_START_COMPOSE="1) SixGPT Miner शुरू करें"
      M_STOP_COMPOSE="2) माइनर को रोकें"
      M_PULL_LLAMA="3) llama3.2 मॉडल खींचें (यदि डाउनलोड त्रुटि हो)"
      M_CHECK_LOGS="5) लॉग की जांच करें"
      M_CHECK_UPDATE="4) अपडेट की जांच करें"
      M_ENABLE_GPU="6) GPU फिर से सक्षम करें"
      M_REMOVE_GPU="7) GPU हटाएं"
      M_RESTART_MINER="8) माइनर को पुनः शुरू करें"
      M_EXIT="9) बाहर निकलें"
      M_INVALID="अमान्य चयन, कृपया फिर से प्रयास करें।"
      M_EXIT_SCRIPT="स्क्रिप्ट से बाहर निकलना।"
      M_UPDATE_PULL="मुख्य से नवीनतम अपडेट खींचना..."
      M_SOURCE_BASHRC="~/.bashrc पुनः लोड करना..."
      M_INSTALL_DOCKER="डॉकर और डॉकर कंपोज़ नहीं मिले। क्या आप उन्हें इंस्टॉल करना चाहते हैं? (y/n)"
      M_INSTALLING_DOCKER="डॉकर स्थापित किया जा रहा है..."
      M_INSTALLING_COMPOSE="डॉकर कंपोज़ स्थापित किया जा रहा है..."
      M_DOCKER_INSTALLED="डॉकर स्थापित किया गया है और चालू है।"
      M_COMPOSE_INSTALLED="डॉकर कंपोज़ स्थापित किया गया है।"
      M_FILE_NOT_FOUND="$DOCKER_COMPOSE_FILE फ़ाइल नहीं मिली। कृपया सुनिश्चित करें कि यह फ़ाइल सही निर्देशिका में है।"
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE पाया गया।"
      M_PULLING_LLAMA="llama3.2 मॉडल खींचा जा रहा है..."
      M_LOGS_CHECKED="लॉग्स की जांच की गई।"
      M_GPU_CONFIG_ADDED="GPU कॉन्फ़िगरेशन जोड़ा गया।"
      M_GPU_CONFIG_REMOVED="GPU कॉन्फ़िगरेशन हटा दिया गया। मूल कॉपी docker-compose.yml.bak के रूप में सहेजी गई।"
      M_MISSING_GPU_CONFIG="हटाने के लिए कोई GPU कॉन्फ़िगरेशन नहीं मिला।"
      M_DOCKER_INSTALLED_MSG="डॉकर स्थापित किया गया है।"
      M_COMPOSE_INSTALLED_MSG="डॉकर कंपोज़ स्थापित किया गया है।"
      M_COMPOSE_FILE_FOUND="docker-compose.yml कॉन्फ़िगरेशन मिला।"
      M_CREATE_NEW_CONFIG="क्या आप नई कॉन्फ़िगरेशन बनाना चाहते हैं? (y/n):"
      M_SKIPPED_NEW_CONFIG="नई कॉन्फ़िगरेशन बनाने की प्रक्रिया को छोड़ दिया गया।"
      M_CHECKING_GPU="GPU की जांच की जा रही है..."
      M_DETECTED_GPU="NVIDIA/AMD GPU का पता चला:"
      M_CHECKING_CPU="CPU की जांच की जा रही है..."
      M_DETECTED_CPU="CPU का पता चला:"
      M_CHECKING_RAM="RAM की जांच की जा रही है..."
      M_TOTAL_RAM="कुल RAM: , उपलब्ध RAM: "
      M_TOTAL_SWAP="कुल स्वैप: , मुक्त स्वैप: "
      M_ENV_FILE_NOT_FOUND=".env फ़ाइल नहीं मिली। आवश्यक कॉन्फ़िगरेशन के साथ नई .env फ़ाइल बनाई जा रही है।"
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY सेट नहीं किया गया है। कृपया अपना निजी कुंजी दर्ज करें (64-आधार hexadecimal):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    AR)
      # Arabic messages
      M_ENTER_KEY="أدخل مفتاح VANA_PRIVATE_KEY الخاص بك: "
      M_REPO_EXISTS="مستودع SixGPT Miner موجود بالفعل."
      M_CLONE_REPO="جارٍ استنساخ مستودع SixGPT Miner..."
      M_NO_DOCKER="لم يتم العثور على Docker."
      M_NO_COMPOSE="لم يتم العثور على Docker Compose."
      M_RUNNING="جارٍ تشغيل SixGPT Miner..."
      M_CHECK_LOG="جارٍ التحقق من سجلات Ollama..."
      M_SELECT_ACTION="اختر الإجراء التالي:"
      M_USE_GPU="هل تريد استخدام GPU؟ (y/n)"
      M_GPU_NOT_FOUND="لم يتم العثور على GPU. هل تريد المتابعة بدون GPU؟ (y/n)"
      M_START_COMPOSE="1) بدء SixGPT Miner"
      M_STOP_COMPOSE="2) إيقاف Miner"
      M_PULL_LLAMA="3) سحب نموذج llama3.2 (إذا حدث خطأ في التنزيل)"
      M_CHECK_LOGS="5) تحقق من السجلات"
      M_CHECK_UPDATE="4) تحقق من التحديثات"
      M_ENABLE_GPU="6) إعادة تمكين GPU"
      M_REMOVE_GPU="7) إزالة GPU"
      M_RESTART_MINER="8) إعادة تشغيل Miner"
      M_EXIT="9) خروج"
      M_INVALID="اختيار غير صالح، يرجى المحاولة مرة أخرى."
      M_EXIT_SCRIPT="الخروج من البرنامج النصي."
      M_UPDATE_PULL="جارٍ سحب التحديثات الأخيرة من الرئيس..."
      M_SOURCE_BASHRC="إعادة تحميل ~/.bashrc..."
      M_INSTALL_DOCKER="لم يتم العثور على Docker و Docker Compose. هل تريد تثبيتهما؟ (y/n)"
      M_INSTALLING_DOCKER="جارٍ تثبيت Docker..."
      M_INSTALLING_COMPOSE="جارٍ تثبيت Docker Compose..."
      M_DOCKER_INSTALLED="تم تثبيت Docker وبدء تشغيله."
      M_COMPOSE_INSTALLED="تم تثبيت Docker Compose."
      M_FILE_NOT_FOUND="لم يتم العثور على ملف $DOCKER_COMPOSE_FILE. يرجى التأكد من وجود هذا الملف في الدليل الصحيح."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE تم العثور عليه."
      M_PULLING_LLAMA="جارٍ سحب نموذج llama3.2..."
      M_LOGS_CHECKED="تم فحص السجلات."
      M_GPU_CONFIG_ADDED="تمت إضافة إعدادات GPU."
      M_GPU_CONFIG_REMOVED="تمت إزالة إعدادات GPU. تم حفظ النسخة الأصلية كـ docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="لم يتم العثور على إعدادات GPU للإزالة."
      M_DOCKER_INSTALLED_MSG="تم تثبيت Docker."
      M_COMPOSE_INSTALLED_MSG="تم تثبيت Docker Compose."
      M_COMPOSE_FILE_FOUND="تم العثور على إعدادات docker-compose.yml."
      M_CREATE_NEW_CONFIG="هل تريد إنشاء إعداد جديد؟ (y/n):"
      M_SKIPPED_NEW_CONFIG="تم تخطي إنشاء إعداد جديد."
      M_CHECKING_GPU="جارٍ التحقق من GPU..."
      M_DETECTED_GPU="تم اكتشاف NVIDIA/AMD GPU:"
      M_CHECKING_CPU="جارٍ التحقق من CPU..."
      M_DETECTED_CPU="تم اكتشاف CPU:"
      M_CHECKING_RAM="جارٍ التحقق من RAM..."
      M_TOTAL_RAM="إجمالي RAM: ، RAM المتاحة: "
      M_TOTAL_SWAP="إجمالي Swap: ، Swap المتاحة: "
      M_ENV_FILE_NOT_FOUND=".env ملف غير موجود. جارٍ إنشاء ملف .env جديد بالإعدادات الضرورية."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY لم يتم تعيينه. يرجى إدخال مفتاحك الخاص (64 حرفاً سادسياً):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    TH)
      # Thai messages
      M_ENTER_KEY="กรุณากรอก VANA_PRIVATE_KEY ของคุณ: "
      M_REPO_EXISTS="ที่เก็บ SixGPT Miner มีอยู่แล้ว."
      M_CLONE_REPO="กำลังโคลนที่เก็บ SixGPT Miner..."
      M_NO_DOCKER="ไม่พบ Docker."
      M_NO_COMPOSE="ไม่พบ Docker Compose."
      M_RUNNING="กำลังรัน SixGPT Miner..."
      M_CHECK_LOG="กำลังตรวจสอบบันทึก Ollama..."
      M_SELECT_ACTION="เลือกการกระทำถัดไป:"
      M_USE_GPU="คุณต้องการใช้ GPU หรือไม่? (y/n)"
      M_GPU_NOT_FOUND="ไม่พบ GPU คุณต้องการดำเนินการต่อโดยไม่มี GPU หรือไม่? (y/n)"
      M_START_COMPOSE="1) เริ่ม SixGPT Miner"
      M_STOP_COMPOSE="2) หยุด Miner"
      M_PULL_LLAMA="3) ดึงโมเดล llama3.2 (หากเกิดข้อผิดพลาดในการดาวน์โหลด)"
      M_CHECK_LOGS="5) ตรวจสอบบันทึก"
      M_CHECK_UPDATE="4) ตรวจสอบการอัปเดต"
      M_ENABLE_GPU="6) เปิดใช้งาน GPU ใหม่อีกครั้ง"
      M_REMOVE_GPU="7) ลบ GPU"
      M_RESTART_MINER="8) เริ่มต้น Miner ใหม่"
      M_EXIT="9) ออกจากระบบ"
      M_INVALID="การเลือกไม่ถูกต้องโปรดลองอีกครั้ง."
      M_EXIT_SCRIPT="ออกจากสคริปต์."
      M_UPDATE_PULL="กำลังดึงการอัปเดตล่าสุดจากหลัก..."
      M_SOURCE_BASHRC="กำลังโหลด ~/.bashrc ใหม่..."
      M_INSTALL_DOCKER="ไม่พบ Docker และ Docker Compose คุณต้องการติดตั้งหรือไม่? (y/n)"
      M_INSTALLING_DOCKER="กำลังติดตั้ง Docker..."
      M_INSTALLING_COMPOSE="กำลังติดตั้ง Docker Compose..."
      M_DOCKER_INSTALLED="Docker ได้ติดตั้งและเริ่มต้นแล้ว."
      M_COMPOSE_INSTALLED="Docker Compose ได้ติดตั้ง."
      M_FILE_NOT_FOUND="ไม่พบไฟล์ $DOCKER_COMPOSE_FILE โปรดตรวจสอบว่าไฟล์นี้อยู่ในไดเรกทอรีที่ถูกต้อง."
      M_FILE_FOUND="$DOCKER_COMPOSE_FILE พบ."
      M_PULLING_LLAMA="กำลังดึงโมเดล llama3.2..."
      M_LOGS_CHECKED="ตรวจสอบบันทึกเรียบร้อยแล้ว."
      M_GPU_CONFIG_ADDED="เพิ่มการกำหนดค่าของ GPU."
      M_GPU_CONFIG_REMOVED="ลบการกำหนดค่าของ GPU การสำเนาเดิมถูกบันทึกเป็น docker-compose.yml.bak."
      M_MISSING_GPU_CONFIG="ไม่พบการกำหนดค่า GPU เพื่อลบ."
      M_DOCKER_INSTALLED_MSG="Docker ได้ถูกติดตั้ง."
      M_COMPOSE_INSTALLED_MSG="Docker Compose ได้ถูกติดตั้ง."
      M_COMPOSE_FILE_FOUND="พบการกำหนดค่าของ docker-compose.yml."
      M_CREATE_NEW_CONFIG="คุณต้องการสร้างการกำหนดค่าใหม่หรือไม่? (y/n):"
      M_SKIPPED_NEW_CONFIG="ข้ามการสร้างการกำหนดค่าใหม่."
      M_CHECKING_GPU="กำลังตรวจสอบ GPU..."
      M_DETECTED_GPU="ตรวจพบ GPU NVIDIA/AMD:"
      M_CHECKING_CPU="กำลังตรวจสอบ CPU..."
      M_DETECTED_CPU="ตรวจพบ CPU:"
      M_CHECKING_RAM="กำลังตรวจสอบ RAM..."
      M_TOTAL_RAM="RAM รวม: , RAM ที่ใช้ได้: "
      M_TOTAL_SWAP="Swap รวม: , Swap ว่าง: "
      M_ENV_FILE_NOT_FOUND=".env ไม่พบไฟล์ กำลังสร้างไฟล์ .env ใหม่พร้อมการกำหนดค่าที่จำเป็น."
      M_PRIVATE_KEY_NOT_SET="VANA_PRIVATE_KEY ยังไม่ได้ตั้งค่า โปรดกรอกกุญแจส่วนตัวของคุณ (16 ตัวอักษร):"
      M_CHECK_CPU_ERR="Unable to detect CPU type or core count."
      M_AVAILABLE_RAM="Available RAM"
      M_INVALID_PK="Invalid VANA_PRIVATE_KEY format in .env file. Please enter a valid 64-character hexadecimal key."
      M_VALID_PK="VANA_PRIVATE_KEY is valid and loaded from .env."
      M_INPUT_NETWORK="Please enter the network (default is 'mainnet')"
      M_INPUT_API_URL="Please enter the API URL (default is 'http://ollama:11434/api')"
      M_SET_MSG="is set to"
      M_INSTALL_REJECTION="User choose not to install"
      M_GPU_REJECT="User choose to use GPU"
      M_FILE_CREATION="Creating a new file with default configuration"
      M_FILE_CREATED="has been created with default configuration"
      M_GPU_CONFIG_ADD="GPU configuration added to"
      M_NO_COMPATIBLE_GPU="No compatible GPU found"
      M_CONTINUE_WITHOUT_GPU="Continue without GPU? (y/n)"
      M_CONFIRM_CONTINUE_WITHOUT_GPU="User choice to continue without GPU"
      M_REJECT_CONTINUE_WITHOUT_GPU="User choose not to continue without GPU"
      M_GPU_CONFIGURATION_ADD="GPU configuration added to",
      M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE="No GPU configurations found to delete"
      M_GPU_CONFIGURATION_ENABLE="Enabling GPU configuration by recreating docker-compose.yml"
      M_CPU_CONFIGURATION_ENABLE="Enabling CPU configuration by recreating docker-compose.yml"
      M_CONFIGURATION_REMOVED="configuration removed",
      M_CONFIGURATION_BACK_UP="Original backup is saved as docker-compose.yml.bak.",
      M_CREATED_DOCKER_COMPOSE="New $DOCKER_COMPOSE_FILE created with"
      M_REMOVE_DOCKER_COMPOSE="Removing existing $DOCKER_COMPOSE_FILE"
      M_LOG_DISPLAY_GUIDE="Logs are being displayed. Press Ctrl+C to stop viewing logs and return to the main menu"
      M_MINER_RESTART="Restarting miner"
      M_MINER_STOP="Stopping miner"
      M_MINER_RESTARTED="Miner restarted"

      ;;

    *)
      echo "Unsupported language code."
      exit 1
      ;;
  esac
}


echo "Select Language | Pilih Bahasa | Выберите язык | 选择语言 | Dil Seç | भाषा का चयन करें | اختر اللغة | ประเทศไทย"
echo "1) English | 2) Bahasa Indonesia | 3) Russian | 4) Chinese | 5) Turkish | 6) Hindi | 7) Arabic| 8) Thai"
read -p "Choose language (1-7): " lang_choice


case $lang_choice in
  1) LANGUAGE="EN";;
  2) LANGUAGE="ID";;
  3) LANGUAGE="RU";;
  4) LANGUAGE="ZH";;
  5) LANGUAGE="TR";;
  6) LANGUAGE="HI";;
  7) LANGUAGE="AR";;
  8) LANGUAGE="TH";;
  *) echo "Invalid choice."; exit 1;;
esac

set_language
echo "Language set to $LANGUAGE"

echo "$M_SOURCE_BASHRC"
source ~/.bashrc
check_gpu() {
  echo "$M_CHECKING_GPU..."
  if command -v nvidia-smi &> /dev/null; then
    GPU_TYPE="NVIDIA"
    GPU_MODEL=$(nvidia-smi --query-gpu=name --format=csv,noheader)
    GPU_MEMORY=$(nvidia-smi --query-gpu=memory.total --format=csv,noheader)
    echo "$M_DETECTED_GPU: $GPU_MODEL with $GPU_MEMORY memory"
  elif command -v lspci &> /dev/null && lspci | grep -i 'vga' | grep -i 'amd' &> /dev/null; then
    GPU_TYPE="AMD"
    GPU_MODEL=$(lspci | grep -i 'vga' | grep -i 'amd' | awk -F ': ' '{print $2}')
    GPU_MEMORY="N/A" # AMD GPUs often require additional tools for memory info
    echo "$M_DETECTED_GPU: $GPU_MODEL"
  else
    GPU_TYPE="None"
    GPU_MODEL="N/A"
    GPU_MEMORY="N/A"
    echo "$M_DETECTED_GPU."
  fi
}

check_cpu() {
  echo "$M_CHECKING_CPU..."
  if grep -q "model name" /proc/cpuinfo; then
    CPU_TYPE=$(grep -m 1 "model name" /proc/cpuinfo | awk -F: '{print $2}' | xargs)
    CPU_CORES=$(grep -c "processor" /proc/cpuinfo)
    echo "Detected CPU: $CPU_TYPE with $CPU_CORES cores"
  elif command -v lscpu &> /dev/null; then
    CPU_TYPE=$(lscpu | grep "Model name" | awk -F: '{print $2}' | xargs)
    CPU_CORES=$(lscpu | grep "^CPU(s):" | awk '{print $2}')
    echo "$M_DETECTED_CPU: $CPU_TYPE with $CPU_CORES cores"
  else
    CPU_TYPE="Unknown"
    CPU_CORES="Unknown"
    echo "$M_CHECK_CPU_ERR"
  fi
}

check_ram() {
  echo "$M_CHECKING_RAM"
  RAM_SIZE=$(free -h --si | awk '/^Mem:/ {print $2}')
  AVAILABLE_RAM=$(free -h --si | awk '/^Mem:/ {print $7}')
  SWAP_TOTAL=$(free -h --si | awk '/^Swap:/ {print $2}')
  SWAP_FREE=$(free -h --si | awk '/^Swap:/ {print $4}')
  echo "$M_TOTAL_RAM: $RAM_SIZE, $M_AVAILABLE_RAM: $AVAILABLE_RAM"
}
load_env_file() {
  if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
  else
    echo "$M_ENV_FILE_NOT_FOUND"
    touch .env
  fi
}

check_vana_private_key() {
  local private_key_regex='^[0-9a-fA-F]{64}$'
  load_env_file
  
  if [ -z "${VANA_PRIVATE_KEY}" ]; then
    echo "$M_PRIVATE_KEY_NOT_SET"
    read -r VANA_PRIVATE_KEY
    echo "VANA_PRIVATE_KEY=${VANA_PRIVATE_KEY}" >> .env
  elif [[ ! "$VANA_PRIVATE_KEY" =~ $private_key_regex ]]; then
    echo "$M_INVALID_PK"
    exit 1
  else
    echo "$M_VALID_PK"
  fi
}

check_vana_network() {
  load_env_file
  if [ -z "${VANA_NETWORK}" ]; then
    echo "$M_INPUT_NETWORK:"
    read -r VANA_NETWORK
    VANA_NETWORK="${VANA_NETWORK:-mainnet}"
    echo "VANA_NETWORK=${VANA_NETWORK}" >> .env
  else
    echo "VANA_NETWORK $M_SET_MSG: $VANA_NETWORK."
  fi
}

check_ollama_api() {
  load_env_file
  if [ -z "${OLLAMA_API_URL}" ]; then
    echo "$M_INPUT_API_URL:"
    read -r OLLAMA_API_URL
    OLLAMA_API_URL="${OLLAMA_API_URL:-http://ollama:11434/api}"
    echo "OLLAMA_API_URL=${OLLAMA_API_URL}" >> .env
  else
    echo "OLLAMA_API_URL $M_SET_MSG: $OLLAMA_API_URL."
  fi
}

if ! command -v docker &> /dev/null; then
    echo "$M_NO_DOCKER"
    echo "$M_INSTALL_DOCKER"
    read -p "> " install_choice
    if [[ $install_choice == "y" || $install_choice == "Y" ]]; then
        echo "$M_INSTALLING_DOCKER"
        sudo apt-get update
        sudo apt-get install -y docker.io
        sudo systemctl start docker
        sudo systemctl enable docker
        echo "$M_DOCKER_INSTALLED"
    else
        echo "$M_INSTALL_REJECTION Docker. Exiting."
        exit 1
    fi
else
    echo "$M_DOCKER_INSTALLED_MSG"
fi
if ! command -v docker-compose &> /dev/null; then
    echo "$M_NO_COMPOSE"
    echo "$M_INSTALL_DOCKER"
    read -p "> " install_choice
    if [[ $install_choice == "y" || $install_choice == "Y" ]]; then
        echo "$M_INSTALLING_COMPOSE..."
        sudo apt-get install -y docker-compose 
        sudo apt-get install docker-compose-plugin -y
        pip install -U docker
        echo "$M_COMPOSE_INSTALLED."
    else
        echo "$M_INSTALL_REJECTION Docker Compose. Exiting."
        exit 1
    fi
else
    echo "$M_COMPOSE_INSTALLED."
fi
DOCKER_COMPOSE_FILE="docker-compose.yml"

if [[ -f "$DOCKER_COMPOSE_FILE" ]]; then
    echo "$M_COMPOSE_FILE_FOUND."
    read -p "$M_CREATE_NEW_CONFIG " create_new
else
    echo "$M_FILE_NOT_FOUND $DOCKER_COMPOSE_FILE"
    create_new="y"
fi

if [[ $create_new == "n" || $create_new == "N" ]]; then
    echo "$M_SKIPPED_NEW_CONFIG."
else
    if [[ ! -f "$DOCKER_COMPOSE_FILE" ]]; then
        echo "$M_FILE_NOT_FOUND $DOCKER_COMPOSE_FILE $M_FILE_CREATION..."
        cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
        echo "$DOCKER_COMPOSE_FILE $M_FILE_CREATED."
    else
        echo "$DOCKER_COMPOSE_FILE found."
    fi

    read -p "$M_USE_GPU " use_gpu_choice
    echo "$M_GPU_REJECT: $use_gpu_choice"

    if [[ $use_gpu_choice == "y" || $use_gpu_choice == "Y" ]]; then
        if command -v nvidia-smi &> /dev/null && nvidia-smi &> /dev/null; then
            echo "NVIDIA GPU found."
            cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
            echo "$M_GPU_CONFIG_ADD $DOCKER_COMPOSE_FILE."
        elif command -v rocm-smi &> /dev/null && rocm-smi &> /dev/null; then
            echo "AMD GPU found."
            cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
            echo "$M_GPU_CONFIG_ADD $DOCKER_COMPOSE_FILE."
        else
            echo "$M_NO_COMPATIBLE_GPU."
            read -p "$M_CONTINUE_WITHOUT_GPU: " continue_without_gpu
            echo "$M_CONFIRM_CONTINUE_WITHOUT_GPU: $continue_without_gpu"
            if [[ $continue_without_gpu != "y" && $continue_without_gpu != "Y" ]]; then
                echo "$M_REJECT_CONTINUE_WITHOUT_GPU. Exiting."
                exit 1
            fi
            cat <<EOF > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"
        
  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOF
            echo "Non-$M_GPU_CONFIGURATION_ADD $DOCKER_COMPOSE_FILE."
        fi
    else
        if sed -i.bak '/deploy:/,/capabilities: \[gpu\]/d' "$DOCKER_COMPOSE_FILE"; then
            echo "GPU $M_CONFIGURATION_REMOVED. Original backup is saved as docker-compose.yml.bak."
        else
            echo "$M_NO_GPU_CONFIGURATION_FOUND_TO_DELETE."
        fi
    fi
fi

check_gpu
check_cpu
check_ram
check_vana_private_key
check_vana_network
check_ollama_api
while true; do
  echo "  ______    _____   ____  ____     ______   _______    _________  "
  echo ".' ____ \  |_   _| |_  _||_  _|  .' ___  | |_   __ \  |  _   _  | "
  echo "| (___ \_|   | |     \ \  / /   / .'   \_|   | |__) | |_/ | | \_| "
  echo " _.____\`.    | |      > ' <    | |  ____     |  ___/      | |     "
  echo "| \____) |  _| |_   _/ /'\` \_  \ \`._]   |    |  |        _| |_    "
  echo " \______.' |_____| |____||____|  \`.____.'    |__|       |_____|   "
  echo "_____________________________________________________________________"
  echo "|                                                                   |"
  echo "|SixGPT is a decentralized synthetic data generation platform       |"
  echo "|built on the Vana network.                                         |"
  echo "|🎉 We welcome your contributions! 🎉                               |"
  echo "|Feel free to contribute at: https://github.com/sixgpt/miner.git    |"
  echo "|___________________________________________________________________|"
  echo "System Specifications: "
  echo "CPU:              $CPU_TYPE"
  echo "CPU Cores:        $CPU_CORES"
  echo "GPU:              $GPU_MODEL ($GPU_TYPE)"
  echo "GPU Memory:       $GPU_MEMORY"
  echo "Total RAM:        $RAM_SIZE"
  echo "Available RAM:    $AVAILABLE_RAM"
  echo "___________________________________________________________________"
  echo "$M_SELECT_ACTION"
  echo "$M_START_COMPOSE"
  echo "$M_STOP_COMPOSE"
  echo "$M_PULL_LLAMA"
  echo "$M_CHECK_LOGS"
  echo "$M_CHECK_UPDATE"
  echo "$M_ENABLE_GPU"
  echo "$M_REMOVE_GPU"
  echo "$M_RESTART_MINER"
  echo "$M_EXIT"
  read -p "> " choice
  echo "User choice: $choice"
  case $choice in
    1)
      echo "$M_RUNNING"
      docker-compose up -d
      echo "Docker containers started."
      ;;
    2)
      echo "$_MINER_STOP..."
      docker-compose down
      echo "$M_EXIT_SCRIPT"
      ;;
    3)
      echo "Pulling llama3.2 model..."
      docker exec -it miner-ollama-1 /bin/bash -c "ollama pull llama3.2"
      echo "Model pulled."
      ;;
    4)
      echo "$M_UPDATE_PULL"
      git pull origin main
      echo "Updates pulled from main."
      ;;
    5)
    echo "$M_CHECK_LOG"
    docker-compose logs -f &
    LOGS_PID=$!

    echo "$M_LOG_DISPLAY_GUIDE."
    trap 'echo ""; echo "Returning to main menu..."; kill $LOGS_PID' SIGINT
    wait $LOGS_PID
    trap - SIGINT
    read -n 1 -s -r -p "Press any key to continue..."
    ;;

      6)
      echo "$M_GPU_CONFIGURATION_ENABLE..."
      DOCKER_COMPOSE_FILE="docker-compose.yml"
      if [[ -f "$DOCKER_COMPOSE_FILE" ]]; then
          echo "$M_REMOVE_DOCKER_COMPOSE..."
          rm "$DOCKER_COMPOSE_FILE"
      fi
      cat <<EOL > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    deploy:
      resources:
        reservations:
          devices:
            - count: all
              capabilities: [gpu]
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOL

      echo "$M_CREATED_DOCKER_COMPOSE GPU configuration."
      ;;

  7)
      echo "$M_CPU_CONFIGURATION_ENABLE..."
      DOCKER_COMPOSE_FILE="docker-compose.yml"
      if [[ -f "$DOCKER_COMPOSE_FILE" ]]; then
          echo "$M_REMOVE_DOCKER_COMPOSE..."
          rm "$DOCKER_COMPOSE_FILE"
      fi
      cat <<EOL > "$DOCKER_COMPOSE_FILE"
version: '3.8'

services:
  ollama:
    image: ollama/ollama:0.3.12
    ports:
      - "11439:11434"
    volumes:
      - ollama:/root/.ollama
    restart: unless-stopped
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

  sixgpt3:
    image: sixgpt/miner:latest
    ports:
      - "3000:3000"
    depends_on:
      - ollama
    environment:
      - VANA_PRIVATE_KEY=\${VANA_PRIVATE_KEY}
      - VANA_NETWORK=\${VANA_NETWORK}
      - OLLAMA_API_URL=\${OLLAMA_API_URL}
    restart: no
    logging:
      driver: "json-file"
      options:
        max-size: "10m"
        max-file: "3"

volumes:
  ollama:
EOL
      echo "$M_CREATED_DOCKER_COMPOSE CPU-only configuration."
      ;;
    8)
      echo "$M_MINER_RESTART..."
      docker-compose down && docker-compose build && docker-compose up -d
      echo "$M_MIINER_RESTARTED."
      ;;
    9)
      echo "$M_EXIT_SCRIPT"
      exit 0
      ;;
    *)
      echo "$M_INVALID"
      ;;
  esac
done