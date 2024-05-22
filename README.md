# for-raspberry-pi-zero-2-speed-up-script

本スクリプトはChatGPTを利用してRaspberry Pi Zero 2 の不要なサービスを無効化して高速化を図るシェルスクリプトです。
本スクリプトの利用は自己責任でお願いします。

## ChatGPT曰く基本的に必要なサービスリスト

1. lightdm.service - GUIログインマネージャ
2. networking.service - ネットワーク設定
3. NetworkManager.service - ネットワーク管理
4. ssh.service - SSHリモート接続
5. cron.service - 定期実行タスク
6. dbus.service - システムメッセージバス（ここにはリストされていませんが、必要な場合は考慮）
7. systemd-timesyncd.service - 時刻同期
8. wpa_supplicant.service - Wi-Fi接続
9. udisks2.service - ディスク管理
10. accounts-daemon.service - アカウント管理
11. dphys-swapfile.service - スワップファイル管理

これらのサービスは、通常のGUI環境およびネットワーク接続を維持するために必要です。

## ChatGPT曰く無効化しても大きな問題がない可能性があるサービス

これらのサービスは特定のハードウェアや機能に依存しているため、システムの特定の機能が不要であれば無効化しても問題ない場合があります。

1. apparmor.service - セキュリティ強化（特定のアプリケーションが必要な場合を除く）
2. avahi-daemon.service - Zeroconf/Bonjourネットワーキング
3. bluetooth.service - Bluetooth機能
4. console-setup.service - コンソール設定
5. cups-browsed.service - CUPSブラウザ（プリンタ関連）
6. cups.service - CUPS（プリンタ関連）
7. e2scrub_reap.service - ファイルシステムスクラビング
8. fake-hwclock.service - ハードウェアクロックエミュレーション
9. getty@.service - 仮想コンソール
10. glamor-test.service - グラフィックハードウェアテスト
11. hciuart.service - Bluetooth HCI UART
12. keyboard-setup.service - キーボード設定
13. ModemManager.service - モデム管理
14. NetworkManager-dispatcher.service - ネットワークイベントディスパッチャ
15. NetworkManager-wait-online.service - ネットワークオンライン待機
16. rp1-test.service - カスタムテストサービス（おそらく特定の設定用）
17. rpi-display-backlight.service - ディスプレイバックライト制御
18. rpi-eeprom-update.service - EEPROMアップデート
19. sshswitch.service - SSHスイッチ
20. systemd-pstore.service - システム状態の保持
21. triggerhappy.service - 特定の入力イベントハンドラ
22. wayvnc-control.service - VNCコントロール

## 本スクリプトの使い方

1. スクリプトに実行権限を付与します。

```bash
chmod +x disable_services.sh
```

2. スクリプトを実行します。

```bash
sudo ./disable_services.sh
```
