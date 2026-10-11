package com.sun.org.apache.bcel.internal.generic;

import com.onyx.android.sdk.p039ui.treeview.view.AndroidTreeView;
import com.sun.org.apache.bcel.internal.Repository;
import com.sun.org.apache.bcel.internal.classfile.JavaClass;

/* loaded from: classes10.dex */
public final class ObjectType extends ReferenceType {
    private String class_name;

    public ObjectType(String str) {
        super((byte) 14, "L" + str.replace('.', '/') + AndroidTreeView.f47214k);
        this.class_name = str.replace('/', '.');
    }

    public boolean accessibleTo(ObjectType objectType) {
        JavaClass lookupClass = Repository.lookupClass(this.class_name);
        if (lookupClass.isPublic()) {
            return true;
        }
        return Repository.lookupClass(objectType.class_name).getPackageName().equals(lookupClass.getPackageName());
    }

    public boolean equals(Object obj) {
        if (obj instanceof ObjectType) {
            return ((ObjectType) obj).class_name.equals(this.class_name);
        }
        return false;
    }

    public String getClassName() {
        return this.class_name;
    }

    public int hashCode() {
        return this.class_name.hashCode();
    }

    public boolean referencesClass() {
        JavaClass lookupClass = Repository.lookupClass(this.class_name);
        if (lookupClass == null) {
            return false;
        }
        return lookupClass.isClass();
    }

    public boolean referencesInterface() {
        if (Repository.lookupClass(this.class_name) == null) {
            return false;
        }
        return !r0.isClass();
    }

    public boolean subclassOf(ObjectType objectType) {
        if (referencesInterface() || objectType.referencesInterface()) {
            return false;
        }
        return Repository.instanceOf(this.class_name, objectType.class_name);
    }
}
