package net.p110sf.saxon.expr;

import com.couchbase.lite.internal.BaseTLSIdentity;
import com.google.android.material.motion.MotionUtils;
import com.thegrizzlylabs.sardineandroid.util.SardineUtil;
import net.p110sf.saxon.value.Cardinality;

/* loaded from: classes11.dex */
public abstract class StaticProperty {
    public static final int ALLOWS_MANY = 32768;
    public static final int ALLOWS_ONE = 16384;
    public static final int ALLOWS_ONE_OR_MORE = 49152;
    public static final int ALLOWS_ZERO = 8192;
    public static final int ALLOWS_ZERO_OR_MORE = 57344;
    public static final int ALLOWS_ZERO_OR_ONE = 24576;
    public static final int ALL_NODES_NEWLY_CREATED = 4194304;
    public static final int ALL_NODES_UNTYPED = 134217728;
    public static final int ATTRIBUTE_NS_NODESET = 2097152;
    public static final int CARDINALITY_MASK = 57344;
    public static final int CONTEXT_DOCUMENT_NODESET = 65536;
    public static final int DEPENDENCY_MASK = 33558527;
    public static final int DEPENDS_ON_ASSIGNABLE_GLOBALS = 512;
    public static final int DEPENDS_ON_CONTEXT_DOCUMENT = 16;
    public static final int DEPENDS_ON_CONTEXT_ITEM = 2;
    public static final int DEPENDS_ON_CURRENT_GROUP = 32;
    public static final int DEPENDS_ON_CURRENT_ITEM = 1;
    public static final int DEPENDS_ON_FOCUS = 30;
    public static final int DEPENDS_ON_LAST = 8;
    public static final int DEPENDS_ON_LOCAL_VARIABLES = 128;
    public static final int DEPENDS_ON_NON_DOCUMENT_FOCUS = 14;
    public static final int DEPENDS_ON_POSITION = 4;
    public static final int DEPENDS_ON_REGEX_GROUP = 64;
    public static final int DEPENDS_ON_RUNTIME_ENVIRONMENT = 1024;
    public static final int DEPENDS_ON_STATIC_CONTEXT = 2048;
    public static final int DEPENDS_ON_USER_FUNCTIONS = 256;
    public static final int DEPENDS_ON_XSLT_CONTEXT = 609;
    public static final int EMPTY = 8192;
    public static final int EXACTLY_ONE = 16384;
    public static final int HAS_SIDE_EFFECTS = 33554432;
    public static final int NODESET_PROPERTIES = 155123712;
    public static final int NOT_UNTYPED_ATOMIC = 67108864;
    public static final int NO_NODES_NEWLY_CREATED = 8388608;
    public static final int ORDERED_NODESET = 131072;
    public static final int PEER_NODESET = 524288;
    public static final int REVERSE_DOCUMENT_ORDER = 262144;
    public static final int SINGLE_DOCUMENT_NODESET = 16777216;
    public static final int SPECIAL_PROPERTY_MASK = 268369920;
    public static final int SUBTREE_NODESET = 1048576;

    public static String display(int i) {
        StringBuilder sb = new StringBuilder(128);
        sb.append("D(");
        if ((i & 1) != 0) {
            sb.append("U");
        }
        if ((i & 2) != 0) {
            sb.append(BaseTLSIdentity.CERT_ATTRIBUTE_COUNTRY);
        }
        if ((i & 4) != 0) {
            sb.append("P");
        }
        if ((i & 8) != 0) {
            sb.append("L");
        }
        if ((i & 16) != 0) {
            sb.append(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        }
        if ((i & 128) != 0) {
            sb.append("V");
        }
        if ((i & 512) != 0) {
            sb.append("A");
        }
        if ((i & 64) != 0) {
            sb.append("R");
        }
        if ((i & 1024) != 0) {
            sb.append("E");
        }
        if ((i & 2048) != 0) {
            sb.append("S");
        }
        sb.append(") C(");
        boolean allowsMany = Cardinality.allowsMany(i);
        boolean allowsZero = Cardinality.allowsZero(i);
        if (allowsMany && allowsZero) {
            sb.append("*");
        } else if (allowsMany) {
            sb.append("+");
        } else if (allowsZero) {
            sb.append("?");
        } else {
            sb.append("1");
        }
        sb.append(") S(");
        if ((33554432 & i) != 0) {
            sb.append("E");
        }
        if ((8388608 & i) != 0) {
            sb.append("N");
        }
        if ((67108864 & i) != 0) {
            sb.append("T");
        }
        if ((131072 & i) != 0) {
            sb.append(BaseTLSIdentity.CERT_ATTRIBUTE_ORGANIZATION);
        }
        if ((524288 & i) != 0) {
            sb.append("P");
        }
        if ((262144 & i) != 0) {
            sb.append("R");
        }
        if ((16777216 & i) != 0) {
            sb.append("S");
        }
        if ((i & 1048576) != 0) {
            sb.append(SardineUtil.DEFAULT_NAMESPACE_PREFIX);
        }
        sb.append(MotionUtils.f31762d);
        return sb.toString();
    }

    public static int getCardinalityCode(int i) {
        return (i & 57344) >> 13;
    }
}
