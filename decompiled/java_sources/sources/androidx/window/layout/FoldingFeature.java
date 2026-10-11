package androidx.window.layout;

import androidx.exifinterface.media.ExifInterface;
import com.sun.org.apache.xalan.internal.xsltc.compiler.Constants;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

@Metadata(m61527d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001:\u0003\u0011\u0012\u0013R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004R\u0012\u0010\u0005\u001a\u00020\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0012\u0010\t\u001a\u00020\nX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0012\u0010\r\u001a\u00020\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, m61528d2 = {"Landroidx/window/layout/FoldingFeature;", "Landroidx/window/layout/DisplayFeature;", "isSeparating", "", Constants.BOOLEAN_VALUE_SIG, "occlusionType", "Landroidx/window/layout/FoldingFeature$OcclusionType;", "getOcclusionType", "()Landroidx/window/layout/FoldingFeature$OcclusionType;", "orientation", "Landroidx/window/layout/FoldingFeature$Orientation;", "getOrientation", "()Landroidx/window/layout/FoldingFeature$Orientation;", "state", "Landroidx/window/layout/FoldingFeature$State;", "getState", "()Landroidx/window/layout/FoldingFeature$State;", "OcclusionType", ExifInterface.TAG_ORIENTATION, "State", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0}, m61532xi = 48)
/* loaded from: classes3.dex */
public interface FoldingFeature extends DisplayFeature {

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\n"}, m61528d2 = {"Landroidx/window/layout/FoldingFeature$OcclusionType;", "", "", "toString", "a", Constants.STRING_SIG, "description", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "Companion", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class OcclusionType {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String description;

        @JvmField
        @NotNull
        public static final OcclusionType NONE = new OcclusionType("NONE");

        @JvmField
        @NotNull
        public static final OcclusionType FULL = new OcclusionType("FULL");

        public OcclusionType(String str) {
            this.description = str;
        }

        @NotNull
        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\n"}, m61528d2 = {"Landroidx/window/layout/FoldingFeature$Orientation;", "", "", "toString", "a", Constants.STRING_SIG, "description", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "Companion", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class Orientation {

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String description;

        @JvmField
        @NotNull
        public static final Orientation VERTICAL = new Orientation("VERTICAL");

        @JvmField
        @NotNull
        public static final Orientation HORIZONTAL = new Orientation("HORIZONTAL");

        public Orientation(String str) {
            this.description = str;
        }

        @NotNull
        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }
    }

    @Metadata(m61527d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\n"}, m61528d2 = {"Landroidx/window/layout/FoldingFeature$State;", "", "", "toString", "a", Constants.STRING_SIG, "description", com.sun.org.apache.bcel.internal.Constants.CONSTRUCTOR_NAME, "(Ljava/lang/String;)V", "Companion", "window_release"}, m61529k = 1, m61530mv = {1, 6, 0})
    /* loaded from: classes3.dex */
    public static final class State {

        @JvmField
        @NotNull
        public static final State FLAT = new State("FLAT");

        @JvmField
        @NotNull
        public static final State HALF_OPENED = new State("HALF_OPENED");

        /* renamed from: a, reason: from kotlin metadata */
        @NotNull
        public final String description;

        public State(String str) {
            this.description = str;
        }

        @NotNull
        /* renamed from: toString, reason: from getter */
        public String getDescription() {
            return this.description;
        }
    }

    @NotNull
    OcclusionType getOcclusionType();

    @NotNull
    Orientation getOrientation();

    @NotNull
    State getState();

    boolean isSeparating();
}
