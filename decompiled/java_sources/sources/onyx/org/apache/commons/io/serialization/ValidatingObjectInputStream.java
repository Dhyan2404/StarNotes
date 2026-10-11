package onyx.org.apache.commons.io.serialization;

import com.sunia.HTREnginev2.mwg;
import com.sunia.HTREnginev2.njl;
import com.sunia.HTREnginev2.rzn;
import com.sunia.HTREnginev2.szn;
import com.sunia.HTREnginev2.tzn;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidClassException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Stream;
import onyx.org.apache.commons.io.serialization.ValidatingObjectInputStream;

/* loaded from: classes11.dex */
public class ValidatingObjectInputStream extends ObjectInputStream {

    /* renamed from: e */
    public final List<ClassNameMatcher> f104536e;

    /* renamed from: f */
    public final List<ClassNameMatcher> f104537f;

    public ValidatingObjectInputStream(InputStream inputStream) throws IOException {
        super(inputStream);
        this.f104536e = new ArrayList();
        this.f104537f = new ArrayList();
    }

    /* renamed from: H */
    public static /* synthetic */ mwg m65680H(Class cls) {
        return new mwg(cls.getName());
    }

    /* renamed from: I */
    public static /* synthetic */ mwg m65681I(Class cls) {
        return new mwg(cls.getName());
    }

    public ValidatingObjectInputStream accept(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new Function() { // from class: com.sunia.HTREnginev2.qzn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                mwg m65680H;
                m65680H = ValidatingObjectInputStream.m65680H((Class) obj);
                return m65680H;
            }
        });
        List<ClassNameMatcher> list = this.f104536e;
        list.getClass();
        map.forEach(new rzn(list));
        return this;
    }

    public void invalidClassNameFound(String str) throws InvalidClassException {
        throw new InvalidClassException("Class name not accepted: " + str);
    }

    public ValidatingObjectInputStream reject(Class<?>... clsArr) {
        Stream map = Stream.of((Object[]) clsArr).map(new Function() { // from class: com.sunia.HTREnginev2.uzn
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                mwg m65681I;
                m65681I = ValidatingObjectInputStream.m65681I((Class) obj);
                return m65681I;
            }
        });
        List<ClassNameMatcher> list = this.f104537f;
        list.getClass();
        map.forEach(new rzn(list));
        return this;
    }

    @Override // java.io.ObjectInputStream
    public Class<?> resolveClass(ObjectStreamClass objectStreamClass) throws IOException, ClassNotFoundException {
        m65684w(objectStreamClass.getName());
        return super.resolveClass(objectStreamClass);
    }

    /* renamed from: w */
    public final void m65684w(String str) throws InvalidClassException {
        boolean z;
        Iterator<ClassNameMatcher> it2 = this.f104537f.iterator();
        while (it2.hasNext()) {
            if (it2.next().matches(str)) {
                invalidClassNameFound(str);
            }
        }
        Iterator<ClassNameMatcher> it3 = this.f104536e.iterator();
        while (true) {
            if (!it3.hasNext()) {
                z = false;
                break;
            } else if (it3.next().matches(str)) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        invalidClassNameFound(str);
    }

    public ValidatingObjectInputStream accept(ClassNameMatcher classNameMatcher) {
        this.f104536e.add(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream reject(ClassNameMatcher classNameMatcher) {
        this.f104537f.add(classNameMatcher);
        return this;
    }

    public ValidatingObjectInputStream accept(Pattern pattern) {
        this.f104536e.add(new njl(pattern));
        return this;
    }

    public ValidatingObjectInputStream reject(Pattern pattern) {
        this.f104537f.add(new njl(pattern));
        return this;
    }

    public ValidatingObjectInputStream accept(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new szn());
        List<ClassNameMatcher> list = this.f104536e;
        list.getClass();
        map.forEach(new tzn(list));
        return this;
    }

    public ValidatingObjectInputStream reject(String... strArr) {
        Stream map = Stream.of((Object[]) strArr).map(new szn());
        List<ClassNameMatcher> list = this.f104537f;
        list.getClass();
        map.forEach(new tzn(list));
        return this;
    }
}
