package com.vivo.penalgoengine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.vivo.penalgoengine.entity.ShapeData;
import com.vivo.penalgoengine.entity.TouchPoint;
import java.util.List;

/* loaded from: classes10.dex */
public interface IAlgoService extends IInterface {

    /* loaded from: classes10.dex */
    public static abstract class Stub extends Binder implements IAlgoService {

        /* renamed from: a */
        public static final String f94466a = "com.vivo.penalgoengine.IAlgoService";

        /* renamed from: b */
        public static final int f94467b = 1;

        /* renamed from: com.vivo.penalgoengine.IAlgoService$Stub$a */
        /* loaded from: classes10.dex */
        public static class C17036a implements IAlgoService {

            /* renamed from: a */
            public IBinder f94468a;

            public C17036a(IBinder iBinder) {
                this.f94468a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f94468a;
            }

            @Override // com.vivo.penalgoengine.IAlgoService
            public ShapeData computeShapeData(List<TouchPoint> list, int i) throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.f94466a);
                    obtain.writeTypedList(list);
                    obtain.writeInt(i);
                    this.f94468a.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt() != 0 ? ShapeData.CREATOR.createFromParcel(obtain2) : null;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            /* renamed from: e */
            public String m60844e() {
                return Stub.f94466a;
            }
        }

        public Stub() {
            attachInterface(this, f94466a);
        }

        public static IAlgoService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(f94466a);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IAlgoService)) ? new C17036a(iBinder) : (IAlgoService) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(f94466a);
                return true;
            }
            parcel.enforceInterface(f94466a);
            ShapeData computeShapeData = computeShapeData(parcel.createTypedArrayList(TouchPoint.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            if (computeShapeData != null) {
                parcel2.writeInt(1);
                computeShapeData.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    ShapeData computeShapeData(List<TouchPoint> list, int i) throws RemoteException;
}
