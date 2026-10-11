package com.onyx.galaxy.note.common.base;

import androidx.databinding.Observable;
import androidx.databinding.PropertyChangeRegistry;
import androidx.lifecycle.ViewModel;

/* loaded from: classes9.dex */
public class BaseViewModel extends ViewModel implements Observable {

    /* renamed from: h */
    public final PropertyChangeRegistry f55992h = new PropertyChangeRegistry();

    @Override // androidx.databinding.Observable
    public void addOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        this.f55992h.add(onPropertyChangedCallback);
    }

    public void notifyChange() {
        this.f55992h.notifyCallbacks(this, 0, null);
    }

    public void notifyPropertyChanged(int i) {
        this.f55992h.notifyCallbacks(this, i, null);
    }

    @Override // androidx.databinding.Observable
    public void removeOnPropertyChangedCallback(Observable.OnPropertyChangedCallback onPropertyChangedCallback) {
        this.f55992h.remove(onPropertyChangedCallback);
    }
}
