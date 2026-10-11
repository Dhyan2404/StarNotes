package androidx.databinding;

import androidx.databinding.Observable;

/* renamed from: androidx.databinding.a */
/* loaded from: classes3.dex */
public abstract class AbstractC0978a extends BaseObservable {

    /* renamed from: androidx.databinding.a$a */
    /* loaded from: classes3.dex */
    public class a extends Observable.OnPropertyChangedCallback {
        public a() {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable observable, int i) {
            AbstractC0978a.this.notifyChange();
        }
    }

    public AbstractC0978a() {
    }

    public AbstractC0978a(Observable... observableArr) {
        if (observableArr == null || observableArr.length == 0) {
            return;
        }
        a aVar = new a();
        for (Observable observable : observableArr) {
            observable.addOnPropertyChangedCallback(aVar);
        }
    }
}
