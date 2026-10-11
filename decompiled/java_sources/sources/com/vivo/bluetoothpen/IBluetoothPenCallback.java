package com.vivo.bluetoothpen;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.vivo.bluetoothpen.OnPenBatteryListener;
import com.vivo.bluetoothpen.OnPenConnectListener;
import com.vivo.bluetoothpen.OnPenStateListener;
import com.vivo.bluetoothpen.OnScanListener;

/* loaded from: classes10.dex */
public interface IBluetoothPenCallback extends IInterface {

    /* loaded from: classes10.dex */
    public static abstract class Stub extends Binder implements IBluetoothPenCallback {
        private static final String DESCRIPTOR = "com.vivo.bluetoothpen.IBluetoothPenCallback";
        static final int TRANSACTION_connectPen = 10;
        static final int TRANSACTION_disconnectPen = 11;
        static final int TRANSACTION_forceDisconnectPen = 12;
        static final int TRANSACTION_getBatteryLevel = 22;
        static final int TRANSACTION_getChargeState = 19;
        static final int TRANSACTION_getConnectedPen = 32;
        static final int TRANSACTION_getFirmwareVersion = 15;
        static final int TRANSACTION_getMotorMode = 21;
        static final int TRANSACTION_getPenName = 16;
        static final int TRANSACTION_getPressThreshold = 23;
        static final int TRANSACTION_getPressureLevel = 20;
        static final int TRANSACTION_getReleaseThreshold = 24;
        static final int TRANSACTION_getSnCode = 17;
        static final int TRANSACTION_getSoftWareVersion = 14;
        static final int TRANSACTION_getWorkMode = 18;
        static final int TRANSACTION_hasPenBonded = 31;
        static final int TRANSACTION_isCurrentPen = 13;
        static final int TRANSACTION_isPenConnect = 30;
        static final int TRANSACTION_registerConnectListener = 3;
        static final int TRANSACTION_registerPenBatteryListener = 7;
        static final int TRANSACTION_registerPenStateListener = 5;
        static final int TRANSACTION_registerScanListener = 1;
        static final int TRANSACTION_scanPen = 9;
        static final int TRANSACTION_setFirmwareInstallState = 28;
        static final int TRANSACTION_setIMUMode = 33;
        static final int TRANSACTION_setMotorMode = 26;
        static final int TRANSACTION_setPressureLevel = 25;
        static final int TRANSACTION_setWorkMode = 27;
        static final int TRANSACTION_setWritingVibrationIntensity = 34;
        static final int TRANSACTION_unregisterConnectListener = 4;
        static final int TRANSACTION_unregisterPenBatteryListener = 8;
        static final int TRANSACTION_unregisterPenStateListener = 6;
        static final int TRANSACTION_unregisterScanListener = 2;
        static final int TRANSACTION_vibrate = 29;

        /* loaded from: classes10.dex */
        public static class Proxy implements IBluetoothPenCallback {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void connectPen(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void disconnectPen(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void forceDisconnectPen(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(12, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getBatteryLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(22, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getChargeState() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(19, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public BluetoothDevice getConnectedPen() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(32, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? (BluetoothDevice) BluetoothDevice.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public String getFirmwareVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(15, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getMotorMode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(21, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public String getPenName() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(16, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getPressThreshold() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(23, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getPressureLevel() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(20, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getReleaseThreshold() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(24, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public long getSnCode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(17, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readLong();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public String getSoftWareVersion() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readString();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public int getWorkMode() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(18, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public boolean hasPenBonded() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(31, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public boolean isCurrentPen(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public boolean isPenConnect(String str) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeString(str);
                    this.mRemote.transact(30, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void registerConnectListener(OnPenConnectListener onPenConnectListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenConnectListener != null ? onPenConnectListener.asBinder() : null);
                    this.mRemote.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void registerPenBatteryListener(OnPenBatteryListener onPenBatteryListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenBatteryListener != null ? onPenBatteryListener.asBinder() : null);
                    this.mRemote.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void registerPenStateListener(OnPenStateListener onPenStateListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenStateListener != null ? onPenStateListener.asBinder() : null);
                    this.mRemote.transact(5, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void registerScanListener(OnScanListener onScanListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onScanListener != null ? onScanListener.asBinder() : null);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void scanPen() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    this.mRemote.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setFirmwareInstallState(boolean z) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(z ? 1 : 0);
                    this.mRemote.transact(28, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setIMUMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(33, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setMotorMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(26, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setPressureLevel(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(25, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setWorkMode(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(27, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void setWritingVibrationIntensity(int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    this.mRemote.transact(34, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void unregisterConnectListener(OnPenConnectListener onPenConnectListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenConnectListener != null ? onPenConnectListener.asBinder() : null);
                    this.mRemote.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void unregisterPenBatteryListener(OnPenBatteryListener onPenBatteryListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenBatteryListener != null ? onPenBatteryListener.asBinder() : null);
                    this.mRemote.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void unregisterPenStateListener(OnPenStateListener onPenStateListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onPenStateListener != null ? onPenStateListener.asBinder() : null);
                    this.mRemote.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void unregisterScanListener(OnScanListener onScanListener) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeStrongBinder(onScanListener != null ? onScanListener.asBinder() : null);
                    this.mRemote.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // com.vivo.bluetoothpen.IBluetoothPenCallback
            public void vibrate(int i, int i2, int i3) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    obtain.writeInt(i);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.mRemote.transact(29, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IBluetoothPenCallback asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IBluetoothPenCallback)) ? new Proxy(iBinder) : (IBluetoothPenCallback) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerScanListener(OnScanListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterScanListener(OnScanListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerConnectListener(OnPenConnectListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterConnectListener(OnPenConnectListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPenStateListener(OnPenStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPenStateListener(OnPenStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerPenBatteryListener(OnPenBatteryListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterPenBatteryListener(OnPenBatteryListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    scanPen();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    connectPen(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    disconnectPen(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    forceDisconnectPen(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isCurrentPen = isCurrentPen(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isCurrentPen ? 1 : 0);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    String softWareVersion = getSoftWareVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(softWareVersion);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String firmwareVersion = getFirmwareVersion();
                    parcel2.writeNoException();
                    parcel2.writeString(firmwareVersion);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String penName = getPenName();
                    parcel2.writeNoException();
                    parcel2.writeString(penName);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    long snCode = getSnCode();
                    parcel2.writeNoException();
                    parcel2.writeLong(snCode);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int workMode = getWorkMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(workMode);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int chargeState = getChargeState();
                    parcel2.writeNoException();
                    parcel2.writeInt(chargeState);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int pressureLevel = getPressureLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(pressureLevel);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int motorMode = getMotorMode();
                    parcel2.writeNoException();
                    parcel2.writeInt(motorMode);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int batteryLevel = getBatteryLevel();
                    parcel2.writeNoException();
                    parcel2.writeInt(batteryLevel);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    int pressThreshold = getPressThreshold();
                    parcel2.writeNoException();
                    parcel2.writeInt(pressThreshold);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    int releaseThreshold = getReleaseThreshold();
                    parcel2.writeNoException();
                    parcel2.writeInt(releaseThreshold);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPressureLevel(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMotorMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWorkMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    setFirmwareInstallState(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    vibrate(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean isPenConnect = isPenConnect(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(isPenConnect ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean hasPenBonded = hasPenBonded();
                    parcel2.writeNoException();
                    parcel2.writeInt(hasPenBonded ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    BluetoothDevice connectedPen = getConnectedPen();
                    parcel2.writeNoException();
                    if (connectedPen != null) {
                        parcel2.writeInt(1);
                        connectedPen.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    setIMUMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setWritingVibrationIntensity(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void connectPen(String str) throws RemoteException;

    void disconnectPen(String str) throws RemoteException;

    void forceDisconnectPen(String str) throws RemoteException;

    int getBatteryLevel() throws RemoteException;

    int getChargeState() throws RemoteException;

    BluetoothDevice getConnectedPen() throws RemoteException;

    String getFirmwareVersion() throws RemoteException;

    int getMotorMode() throws RemoteException;

    String getPenName() throws RemoteException;

    int getPressThreshold() throws RemoteException;

    int getPressureLevel() throws RemoteException;

    int getReleaseThreshold() throws RemoteException;

    long getSnCode() throws RemoteException;

    String getSoftWareVersion() throws RemoteException;

    int getWorkMode() throws RemoteException;

    boolean hasPenBonded() throws RemoteException;

    boolean isCurrentPen(String str) throws RemoteException;

    boolean isPenConnect(String str) throws RemoteException;

    void registerConnectListener(OnPenConnectListener onPenConnectListener) throws RemoteException;

    void registerPenBatteryListener(OnPenBatteryListener onPenBatteryListener) throws RemoteException;

    void registerPenStateListener(OnPenStateListener onPenStateListener) throws RemoteException;

    void registerScanListener(OnScanListener onScanListener) throws RemoteException;

    void scanPen() throws RemoteException;

    void setFirmwareInstallState(boolean z) throws RemoteException;

    void setIMUMode(int i) throws RemoteException;

    void setMotorMode(int i) throws RemoteException;

    void setPressureLevel(int i) throws RemoteException;

    void setWorkMode(int i) throws RemoteException;

    void setWritingVibrationIntensity(int i) throws RemoteException;

    void unregisterConnectListener(OnPenConnectListener onPenConnectListener) throws RemoteException;

    void unregisterPenBatteryListener(OnPenBatteryListener onPenBatteryListener) throws RemoteException;

    void unregisterPenStateListener(OnPenStateListener onPenStateListener) throws RemoteException;

    void unregisterScanListener(OnScanListener onScanListener) throws RemoteException;

    void vibrate(int i, int i2, int i3) throws RemoteException;
}
