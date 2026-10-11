package com.onyx.galaxy.note.account.p043ui;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.navigation.NavDirections;
import com.onyx.galaxy.note.C10651R;
import com.onyx.galaxy.note.account.data.BindType;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes9.dex */
public class LoginFragmentDirections {

    /* loaded from: classes9.dex */
    public static class ActionFragmentLoginToFragmentBindPhone implements NavDirections {

        /* renamed from: a */
        public final HashMap f53480a;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            ActionFragmentLoginToFragmentBindPhone actionFragmentLoginToFragmentBindPhone = (ActionFragmentLoginToFragmentBindPhone) obj;
            if (this.f53480a.containsKey("bind_type") != actionFragmentLoginToFragmentBindPhone.f53480a.containsKey("bind_type")) {
                return false;
            }
            if (getBindType() == null ? actionFragmentLoginToFragmentBindPhone.getBindType() == null : getBindType().equals(actionFragmentLoginToFragmentBindPhone.getBindType())) {
                return getActionId() == actionFragmentLoginToFragmentBindPhone.getActionId();
            }
            return false;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C10651R.id.action_fragment_login_to_fragment_bind_phone;
        }

        @Override // androidx.navigation.NavDirections
        @NonNull
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.f53480a.containsKey("bind_type")) {
                BindType bindType = (BindType) this.f53480a.get("bind_type");
                if (Parcelable.class.isAssignableFrom(BindType.class) || bindType == null) {
                    bundle.putParcelable("bind_type", (Parcelable) Parcelable.class.cast(bindType));
                } else {
                    if (!Serializable.class.isAssignableFrom(BindType.class)) {
                        throw new UnsupportedOperationException(BindType.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                    }
                    bundle.putSerializable("bind_type", (Serializable) Serializable.class.cast(bindType));
                }
            } else {
                bundle.putSerializable("bind_type", BindType.BIND_PHONE);
            }
            return bundle;
        }

        @NonNull
        public BindType getBindType() {
            return (BindType) this.f53480a.get("bind_type");
        }

        public int hashCode() {
            return (((getBindType() != null ? getBindType().hashCode() : 0) + 31) * 31) + getActionId();
        }

        @NonNull
        public ActionFragmentLoginToFragmentBindPhone setBindType(@NonNull BindType bindType) {
            if (bindType == null) {
                throw new IllegalArgumentException("Argument \"bind_type\" is marked as non-null but was passed a null value.");
            }
            this.f53480a.put("bind_type", bindType);
            return this;
        }

        public String toString() {
            return "ActionFragmentLoginToFragmentBindPhone(actionId=" + getActionId() + "){bindType=" + getBindType() + "}";
        }

        public ActionFragmentLoginToFragmentBindPhone() {
            this.f53480a = new HashMap();
        }
    }

    @NonNull
    public static ActionFragmentLoginToFragmentBindPhone actionFragmentLoginToFragmentBindPhone() {
        return new ActionFragmentLoginToFragmentBindPhone();
    }
}
