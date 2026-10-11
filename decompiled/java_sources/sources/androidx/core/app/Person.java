package androidx.core.app;

import android.app.Person;
import android.os.Bundle;
import android.os.PersistableBundle;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import java.util.Objects;

/* loaded from: classes3.dex */
public class Person {

    /* renamed from: g */
    public static final String f5120g = "name";

    /* renamed from: h */
    public static final String f5121h = "icon";

    /* renamed from: i */
    public static final String f5122i = "uri";

    /* renamed from: j */
    public static final String f5123j = "key";

    /* renamed from: k */
    public static final String f5124k = "isBot";

    /* renamed from: l */
    public static final String f5125l = "isImportant";

    /* renamed from: a */
    @Nullable
    public CharSequence f5126a;

    /* renamed from: b */
    @Nullable
    public IconCompat f5127b;

    /* renamed from: c */
    @Nullable
    public String f5128c;

    /* renamed from: d */
    @Nullable
    public String f5129d;

    /* renamed from: e */
    public boolean f5130e;

    /* renamed from: f */
    public boolean f5131f;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a */
        @Nullable
        public CharSequence f5132a;

        /* renamed from: b */
        @Nullable
        public IconCompat f5133b;

        /* renamed from: c */
        @Nullable
        public String f5134c;

        /* renamed from: d */
        @Nullable
        public String f5135d;

        /* renamed from: e */
        public boolean f5136e;

        /* renamed from: f */
        public boolean f5137f;

        public Builder() {
        }

        @NonNull
        public Person build() {
            return new Person(this);
        }

        @NonNull
        public Builder setBot(boolean z) {
            this.f5136e = z;
            return this;
        }

        @NonNull
        public Builder setIcon(@Nullable IconCompat iconCompat) {
            this.f5133b = iconCompat;
            return this;
        }

        @NonNull
        public Builder setImportant(boolean z) {
            this.f5137f = z;
            return this;
        }

        @NonNull
        public Builder setKey(@Nullable String str) {
            this.f5135d = str;
            return this;
        }

        @NonNull
        public Builder setName(@Nullable CharSequence charSequence) {
            this.f5132a = charSequence;
            return this;
        }

        @NonNull
        public Builder setUri(@Nullable String str) {
            this.f5134c = str;
            return this;
        }

        public Builder(Person person) {
            this.f5132a = person.f5126a;
            this.f5133b = person.f5127b;
            this.f5134c = person.f5128c;
            this.f5135d = person.f5129d;
            this.f5136e = person.f5130e;
            this.f5137f = person.f5131f;
        }
    }

    @RequiresApi(22)
    /* renamed from: androidx.core.app.Person$a */
    /* loaded from: classes3.dex */
    public static class C0607a {
        @DoNotInline
        /* renamed from: a */
        public static Person m2600a(PersistableBundle persistableBundle) {
            return new Builder().setName(persistableBundle.getString("name")).setUri(persistableBundle.getString("uri")).setKey(persistableBundle.getString("key")).setBot(persistableBundle.getBoolean(Person.f5124k)).setImportant(persistableBundle.getBoolean(Person.f5125l)).build();
        }

        @DoNotInline
        /* renamed from: b */
        public static PersistableBundle m2601b(Person person) {
            PersistableBundle persistableBundle = new PersistableBundle();
            CharSequence charSequence = person.f5126a;
            persistableBundle.putString("name", charSequence != null ? charSequence.toString() : null);
            persistableBundle.putString("uri", person.f5128c);
            persistableBundle.putString("key", person.f5129d);
            persistableBundle.putBoolean(Person.f5124k, person.f5130e);
            persistableBundle.putBoolean(Person.f5125l, person.f5131f);
            return persistableBundle;
        }
    }

    @RequiresApi(28)
    /* renamed from: androidx.core.app.Person$b */
    /* loaded from: classes3.dex */
    public static class C0608b {
        @DoNotInline
        /* renamed from: a */
        public static Person m2602a(android.app.Person person) {
            return new Builder().setName(person.getName()).setIcon(person.getIcon() != null ? IconCompat.createFromIcon(person.getIcon()) : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
        }

        @DoNotInline
        /* renamed from: b */
        public static android.app.Person m2603b(Person person) {
            return new Person.Builder().setName(person.getName()).setIcon(person.getIcon() != null ? person.getIcon().toIcon() : null).setUri(person.getUri()).setKey(person.getKey()).setBot(person.isBot()).setImportant(person.isImportant()).build();
        }
    }

    public Person(Builder builder) {
        this.f5126a = builder.f5132a;
        this.f5127b = builder.f5133b;
        this.f5128c = builder.f5134c;
        this.f5129d = builder.f5135d;
        this.f5130e = builder.f5136e;
        this.f5131f = builder.f5137f;
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromAndroidPerson(@NonNull android.app.Person person) {
        return C0608b.m2602a(person);
    }

    @NonNull
    public static Person fromBundle(@NonNull Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("icon");
        return new Builder().setName(bundle.getCharSequence("name")).setIcon(bundle2 != null ? IconCompat.createFromBundle(bundle2) : null).setUri(bundle.getString("uri")).setKey(bundle.getString("key")).setBot(bundle.getBoolean(f5124k)).setImportant(bundle.getBoolean(f5125l)).build();
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public static Person fromPersistableBundle(@NonNull PersistableBundle persistableBundle) {
        return C0607a.m2600a(persistableBundle);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Person)) {
            return false;
        }
        Person person = (Person) obj;
        String key = getKey();
        String key2 = person.getKey();
        return (key == null && key2 == null) ? Objects.equals(Objects.toString(getName()), Objects.toString(person.getName())) && Objects.equals(getUri(), person.getUri()) && Objects.equals(Boolean.valueOf(isBot()), Boolean.valueOf(person.isBot())) && Objects.equals(Boolean.valueOf(isImportant()), Boolean.valueOf(person.isImportant())) : Objects.equals(key, key2);
    }

    @Nullable
    public IconCompat getIcon() {
        return this.f5127b;
    }

    @Nullable
    public String getKey() {
        return this.f5129d;
    }

    @Nullable
    public CharSequence getName() {
        return this.f5126a;
    }

    @Nullable
    public String getUri() {
        return this.f5128c;
    }

    public int hashCode() {
        String key = getKey();
        return key != null ? key.hashCode() : Objects.hash(getName(), getUri(), Boolean.valueOf(isBot()), Boolean.valueOf(isImportant()));
    }

    public boolean isBot() {
        return this.f5130e;
    }

    public boolean isImportant() {
        return this.f5131f;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public String resolveToLegacyUri() {
        String str = this.f5128c;
        if (str != null) {
            return str;
        }
        if (this.f5126a == null) {
            return "";
        }
        return "name:" + ((Object) this.f5126a);
    }

    @NonNull
    @RequiresApi(28)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public android.app.Person toAndroidPerson() {
        return C0608b.m2603b(this);
    }

    @NonNull
    public Builder toBuilder() {
        return new Builder(this);
    }

    @NonNull
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putCharSequence("name", this.f5126a);
        IconCompat iconCompat = this.f5127b;
        bundle.putBundle("icon", iconCompat != null ? iconCompat.toBundle() : null);
        bundle.putString("uri", this.f5128c);
        bundle.putString("key", this.f5129d);
        bundle.putBoolean(f5124k, this.f5130e);
        bundle.putBoolean(f5125l, this.f5131f);
        return bundle;
    }

    @NonNull
    @RequiresApi(22)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public PersistableBundle toPersistableBundle() {
        return C0607a.m2601b(this);
    }
}
