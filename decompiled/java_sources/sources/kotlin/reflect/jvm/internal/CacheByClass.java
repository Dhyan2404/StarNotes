package kotlin.reflect.jvm.internal;

import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b \u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&J\u0019\u0010\u0006\u001a\u00028\u00002\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\bH&¢\u0006\u0002\u0010\t¨\u0006\n"}, m61528d2 = {"Lkotlin/reflect/jvm/internal/CacheByClass;", "V", "", "()V", Constants.CLEAR_ATTRIBUTES, "", "get", "key", "Ljava/lang/Class;", "(Ljava/lang/Class;)Ljava/lang/Object;", "kotlin-reflection"}, m61529k = 1, m61530mv = {1, 9, 0}, m61532xi = 48)
/* loaded from: classes11.dex */
public abstract class CacheByClass<V> {
    public abstract void clear();

    public abstract V get(@NotNull Class<?> key);
}
