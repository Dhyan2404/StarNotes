.class public final Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGeometryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,1094:1\n1#2:1095\n350#3,7:1096\n1549#3:1103\n1620#3,3:1104\n766#3:1107\n857#3,2:1108\n1045#3:1110\n1855#3,2:1111\n1549#3:1113\n1620#3,3:1114\n1549#3:1117\n1620#3,3:1118\n1549#3:1121\n1620#3,3:1122\n1549#3:1125\n1620#3,3:1126\n1549#3:1129\n1620#3,3:1130\n1855#3,2:1133\n766#3:1136\n857#3:1137\n1747#3,3:1139\n858#3:1142\n766#3:1143\n857#3,2:1144\n1549#3:1146\n1620#3,3:1147\n288#3,2:1150\n1774#3,4:1152\n1774#3,4:1156\n1940#3,14:1174\n1855#3,2:1188\n1855#3,2:1190\n1855#3,2:1192\n1855#3:1194\n1855#3,2:1195\n1856#3:1197\n1549#3:1198\n1620#3,3:1199\n1855#3,2:1202\n699#4:1135\n679#4:1138\n657#4,14:1160\n*S KotlinDebug\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n*L\n119#1:1096,7\n124#1:1103\n124#1:1104,3\n203#1:1107\n203#1:1108,2\n281#1:1110\n288#1:1111,2\n405#1:1113\n405#1:1114,3\n406#1:1117\n406#1:1118,3\n412#1:1121\n412#1:1122,3\n416#1:1125\n416#1:1126,3\n420#1:1129\n420#1:1130,3\n450#1:1133,2\n529#1:1136\n529#1:1137\n529#1:1139,3\n529#1:1142\n649#1:1143\n649#1:1144,2\n661#1:1146\n661#1:1147,3\n673#1:1150,2\n754#1:1152,4\n762#1:1156,4\n823#1:1174,14\n836#1:1188,2\n846#1:1190,2\n856#1:1192,2\n872#1:1194\n873#1:1195,2\n872#1:1197\n954#1:1198\n954#1:1199,3\n1079#1:1202,2\n529#1:1135\n529#1:1138\n810#1:1160,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u0004\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008/\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u000e\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u0016\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004J\u0016\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004J\u0016\u0010\u0014\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tJ\u001d\u0010\u0015\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0018J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ\u0016\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cJ\u0016\u0010!\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u001cJ&\u0010\"\u001a\u00020\u001a2\u0006\u0010#\u001a\u00020\t2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010\'\u001a\u00020\u0004J\u000e\u0010(\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004J\u0016\u0010*\u001a\u00020\u00042\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\tJ\u000e\u0010-\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010.\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004J\u0012\u0010/\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0017\u001a\u00020\u0004J\u001c\u00100\u001a\u00020\u001a*\u00020%2\u0006\u00101\u001a\u00020%2\u0008\u0008\u0002\u00102\u001a\u00020\u0004J\u0018\u00103\u001a\u00020\u0004*\u00020\t2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\t05J\n\u00106\u001a\u00020%*\u00020\u001cJ\u0012\u00106\u001a\u00020%*\n\u0012\u0004\u0012\u00020\t\u0018\u000105J\u001a\u00107\u001a\u00020%*\u00020\t2\u0006\u00108\u001a\u00020\u00042\u0006\u00109\u001a\u00020\u0004J\n\u0010\u0008\u001a\u00020\t*\u00020%J\u001e\u0010:\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010;\u001a\u00020<J*\u0010=\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010>\u001a\u00020\u00042\u0008\u0008\u0002\u0010?\u001a\u00020@J\u0012\u0010A\u001a\u00020\u0004*\u00020\u001c2\u0006\u00101\u001a\u00020\u001cJ4\u0010B\u001a\u00020C*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010+\u001a\u00020\t2\u0006\u0010D\u001a\u00020\t2\u0008\u0008\u0002\u0010E\u001a\u00020\t2\u0008\u0008\u0002\u0010F\u001a\u00020\u001aJ\u0018\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u00020\u001c2\u0006\u0010H\u001a\u00020<J3\u0010I\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0016\u0010J\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010C0K\"\u0004\u0018\u00010C\u00a2\u0006\u0002\u0010LJ\u0016\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t05J\u001a\u0010N\u001a\u00020\t*\u00020\t2\u0006\u0010O\u001a\u00020<2\u0006\u0010P\u001a\u00020<J\n\u0010Q\u001a\u00020R*\u00020RJ\u0010\u0010S\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\u001c05J\u0012\u0010T\u001a\u00020\u0004*\u00020%2\u0006\u00101\u001a\u00020%J\u0012\u0010T\u001a\u00020\u0004*\u00020\t2\u0006\u00101\u001a\u00020\tJ\u0010\u0010U\u001a\u00020\u001c*\u0008\u0012\u0004\u0012\u00020\t05J \u0010V\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010W\u001a\u00020<J \u0010X\u001a\u0008\u0012\u0004\u0012\u00020Y05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001aJ \u0010[\u001a\u0008\u0012\u0004\u0012\u00020\u001c05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001aJH\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<2\u0008\u0008\u0002\u0010]\u001a\u00020\u001a2\u0008\u0008\u0002\u0010^\u001a\u00020<2\u0008\u0008\u0002\u0010_\u001a\u00020\u001a2\u0008\u0008\u0002\u0010`\u001a\u00020\u001aJ\u0018\u0010a\u001a\u00020\t*\u00020\t2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\t05J\u001c\u0010b\u001a\u0004\u0018\u00010\t*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u0018\u0010c\u001a\u00020@*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010d\u001a\u00020\tJ \u0010e\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010f\u001a\u00020<J\u001c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0505J3\u0010h\u001a\u00020@*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\u0017\u0010i\u001a\u0013\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020\u001a0j\u00a2\u0006\u0002\u0008kJ\u0012\u0010l\u001a\u0004\u0018\u00010\t*\u0008\u0012\u0004\u0012\u00020\t05J\u001a\u0010m\u001a\u00020\t*\u00020\t2\u0006\u0010\u0014\u001a\u00020<2\u0006\u0010\u0016\u001a\u00020<J\u0012\u0010n\u001a\u00020\t*\u00020\t2\u0006\u0010\u0008\u001a\u00020\tJ\u001c\u0010o\u001a\u0004\u0018\u00010\t*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u001c\u0010p\u001a\u0004\u0018\u00010\t*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u0018\u0010q\u001a\u00020r*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010$\u001a\u00020%J\n\u0010s\u001a\u00020\u0004*\u00020YJ\u0010\u0010t\u001a\u00020\u001c*\u0008\u0012\u0004\u0012\u00020\t05J\u0012\u0010u\u001a\u00020v*\u00020\t2\u0006\u00101\u001a\u00020\tJ\u001a\u0010w\u001a\u00020%*\u00020\t2\u0006\u00108\u001a\u00020<2\u0006\u00109\u001a\u00020<J\u0010\u0010x\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\t05J\u001c\u0010y\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0505*\u0008\u0012\u0004\u0012\u00020\t05J*\u0010z\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0505*\u0008\u0012\u0004\u0012\u00020\t052\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020\t05J\u001c\u0010|\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\t0505*\u0008\u0012\u0004\u0012\u00020\t05J\u001c\u0010}\u001a\u0004\u0018\u00010Y*\u00020Y2\u0006\u0010\u0014\u001a\u00020<2\u0006\u0010~\u001a\u00020\u001aJ\u0010\u0010\u007f\u001a\u00020\t*\u0008\u0012\u0004\u0012\u00020\t05J\u0014\u0010\u0080\u0001\u001a\u00020\u001a*\u00020Y2\u0007\u0010\u0081\u0001\u001a\u00020YJ&\u0010\u0082\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J/\u0010\u0084\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<2\u0008\u0008\u0002\u0010]\u001a\u00020\u001a2\u0008\u0008\u0002\u0010^\u001a\u00020<J\u0019\u0010\u0085\u0001\u001a\u00020\u001a*\u00020\t2\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\t05J\u0013\u0010\u0086\u0001\u001a\u00020\u001a*\u00020%2\u0006\u00101\u001a\u00020%J\u001d\u0010\u0087\u0001\u001a\u00020\u0004*\u00020\t2\u0007\u0010\u0088\u0001\u001a\u00020\t2\u0007\u0010\u0089\u0001\u001a\u00020\tJ\u0014\u0010\u0087\u0001\u001a\u00020\u0004*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001cJ&\u0010\u008a\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J4\u0010\u008b\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\u0017\u0010i\u001a\u0013\u0012\u0004\u0012\u00020Y\u0012\u0004\u0012\u00020\u001a0j\u00a2\u0006\u0002\u0008kJ&\u0010\u008c\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J&\u0010\u008d\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010Z\u001a\u00020\u001a2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u001b\u0010\u008e\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u001b\u0010\u008f\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u0016\u0010\u0090\u0001\u001a\u00020\u001a*\u00020Y2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0091\u0001\u001a\u00020\u001a*\u00020Y2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0092\u0001\u001a\u00020\u001a*\u00020Y2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u0016\u0010\u0093\u0001\u001a\u00020\u001a*\u00020\u001c2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J*\u0010\u0094\u0001\u001a\u00020\u001a*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001c2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<2\t\u0008\u0002\u0010\u0095\u0001\u001a\u00020\u001aJ\u001f\u0010\u0096\u0001\u001a\u00020\u001a*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001c2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u001b\u0010\u0097\u0001\u001a\u00020\u001a*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010;\u001a\u00020<J\u0016\u0010\u0098\u0001\u001a\u00020\u001a*\u00020\u001c2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020<J\u0011\u0010\u0099\u0001\u001a\u00020\t*\u0008\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009a\u0001\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009b\u0001\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\t05J\u0011\u0010\u009c\u0001\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\t05J\u001d\u0010\u009d\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010\u009e\u0001\u001a\u00020<2\u0007\u0010\u009f\u0001\u001a\u00020<J\u001d\u0010\u00a0\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010\u00a1\u0001\u001a\u00020<2\u0007\u0010\u00a2\u0001\u001a\u00020<J\u001f\u0010\u00a3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010;\u001a\u00020\u0004J:\u0010\u00a4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0008\u0008\u0002\u0010W\u001a\u00020<2\u0017\u0008\u0002\u0010\u00a5\u0001\u001a\u0010\u0012\u0005\u0012\u00030\u00a6\u0001\u0012\u0005\u0012\u00030\u00a7\u00010jJ\u0011\u0010\u00a8\u0001\u001a\u00020\t*\u0008\u0012\u0004\u0012\u00020\t05J\u0014\u0010\u00a9\u0001\u001a\u00020\u0004*\u00020\u001c2\u0007\u0010\u0081\u0001\u001a\u00020\u001cJ\u001c\u0010\u00aa\u0001\u001a\u00020\t*\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\u0007\u0010\u00ab\u0001\u001a\u00020\u0004J(\u0010\u00aa\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\u0006\u0010\u0008\u001a\u00020\t2\u0007\u0010\u00ab\u0001\u001a\u00020\u0004J\u0017\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001*\u00020\t2\t\u0008\u0002\u0010\u00ae\u0001\u001a\u00020@J\u0011\u0010\u00af\u0001\u001a\u00020\u0004*\u0008\u0012\u0004\u0012\u00020\t05J\"\u0010\u00b0\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u0008\u0012\u0004\u0012\u00020\t052\t\u0010\u00b1\u0001\u001a\u0004\u0018\u00010CJ\u001b\u0010\u00b2\u0001\u001a\u00020\u001c*\u00020\u001c2\u0006\u0010\u0014\u001a\u00020<2\u0006\u00101\u001a\u00020\tJ\u0011\u0010\u00b3\u0001\u001a\u0008\u0012\u0004\u0012\u00020\t05*\u00020%J\u001c\u0010\u00b4\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010\u00b5\u0001\u001a\u00020\t2\u0006\u0010O\u001a\u00020<J\u001c\u0010\u00b6\u0001\u001a\u00020\u001a*\u00020\t2\u0007\u0010\u00b5\u0001\u001a\u00020\t2\u0006\u0010P\u001a\u00020<R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b7\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;",
        "",
        "()V",
        "ANY_LENGTH",
        "",
        "LITTLE_LENGTH",
        "LITTLE_PIXEL_SIZE",
        "ONE_PIXEL",
        "center",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "p1",
        "p2",
        "degreeToRad",
        "degree",
        "deltaDegree",
        "degree1",
        "degree2",
        "deltaRad",
        "rad1",
        "rad2",
        "distance",
        "getNearestStandardDirection",
        "directionInRad",
        "mistakeRangeInRad",
        "(FF)Ljava/lang/Float;",
        "isClockwise",
        "",
        "startDir",
        "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
        "endDir",
        "lengthDifferRateToShorter",
        "a",
        "b",
        "longer",
        "nearBoundRect",
        "point",
        "bound",
        "Landroid/graphics/RectF;",
        "dxThreshold",
        "dyThreshold",
        "radToDegree",
        "rad",
        "slope",
        "startPoint",
        "endPoint",
        "toUnsignedDegree",
        "toUnsignedRad",
        "adjustToStandardDirectionIfPossible",
        "atSameLine",
        "target",
        "mistakeRangeInPercent",
        "averageDistance",
        "points",
        "",
        "boundRect",
        "boundRectFromCenter",
        "rx",
        "ry",
        "cleanClosePoints",
        "threshold",
        "",
        "cleanEdgePoints",
        "percent",
        "minSize",
        "",
        "computeLengthScale",
        "computeRectAdjustMatrix",
        "Landroid/graphics/Matrix;",
        "stopPoint",
        "anchorPoint",
        "keepAspectRatio",
        "computeRectByHeight",
        "height",
        "concatTransform",
        "matrixs",
        "",
        "(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;",
        "copy",
        "copyAndOffset",
        "dx",
        "dy",
        "correctDirection",
        "Lcom/onyx/android/sdk/geometry/data/RotatedRect;",
        "differRate",
        "distanceTo",
        "farthestPointPair",
        "filterBySpacing",
        "spacing",
        "findAllAngles",
        "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
        "makePathClose",
        "findAllSides",
        "findAllTurningPoints",
        "requireMinLength",
        "minLength",
        "includeStartPoint",
        "includeEndPoint",
        "findFarthestPoint",
        "findFirstTurningPoint",
        "findIndexByAddress",
        "element",
        "findKneePoints",
        "kneePointDeltaDegree",
        "findLongestSegment",
        "findMatchedAngleCount",
        "featurePredicate",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "findPathCenter",
        "findPointByDistance",
        "findSymmetricalPoint",
        "findTurningPointFromCenterToEnd",
        "findTurningPointFromCenterToStart",
        "getBoundCollision",
        "Lcom/onyx/android/sdk/geometry/data/BoundCollision;",
        "getClockwiseAngle",
        "getLongestEdge",
        "getOffsetTo",
        "",
        "getOvalRect",
        "getResampleSpacing",
        "getSegmentsByKneePoints",
        "getSegmentsBySplitPoints",
        "splitPoints",
        "getSegmentsByTurningPoints",
        "getStrokedAnglePoints",
        "isInnerStroke",
        "gravityCenter",
        "hasDirectionChanged",
        "other",
        "hasRightAngle",
        "mistakeRange",
        "hasTurningPoint",
        "insideClosure",
        "intersectedWith",
        "intersectionAngle",
        "previous",
        "next",
        "isAllAngleAcute",
        "isAllAngleMatches",
        "isAllAngleObtuse",
        "isAllAngleRight",
        "isAllSegmentsCurvy",
        "isAllSegmentsStraight",
        "isAngleAcute",
        "isAngleObtuse",
        "isAngleRight",
        "isHorizontal",
        "isParallelTo",
        "ignoreDirection",
        "isPerpendicularTo",
        "isSegmentStraight",
        "isVertical",
        "leftTop",
        "length",
        "maxDeltaDegree",
        "maxDeltaRad",
        "onSameXSide",
        "x1",
        "x2",
        "onSameYSide",
        "y1",
        "y2",
        "removeEqualsEndPoint",
        "resample",
        "compose",
        "Landroid/graphics/Path;",
        "",
        "rightBottom",
        "rotationAngleForParallel",
        "rotationTransform",
        "rotationInRad",
        "toMotionEvent",
        "Landroid/view/MotionEvent;",
        "action",
        "totalLineLength",
        "transform",
        "matrix",
        "translateAlongPointDirection",
        "vertexPoints",
        "willXSideChangeAfterOffset",
        "p",
        "willYSideChangeAfterOffset",
        "sdk-geometry_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGeometryUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Collection.kt\ncom/onyx/android/sdk/base/extension/CollectionKt\n*L\n1#1,1094:1\n1#2:1095\n350#3,7:1096\n1549#3:1103\n1620#3,3:1104\n766#3:1107\n857#3,2:1108\n1045#3:1110\n1855#3,2:1111\n1549#3:1113\n1620#3,3:1114\n1549#3:1117\n1620#3,3:1118\n1549#3:1121\n1620#3,3:1122\n1549#3:1125\n1620#3,3:1126\n1549#3:1129\n1620#3,3:1130\n1855#3,2:1133\n766#3:1136\n857#3:1137\n1747#3,3:1139\n858#3:1142\n766#3:1143\n857#3,2:1144\n1549#3:1146\n1620#3,3:1147\n288#3,2:1150\n1774#3,4:1152\n1774#3,4:1156\n1940#3,14:1174\n1855#3,2:1188\n1855#3,2:1190\n1855#3,2:1192\n1855#3:1194\n1855#3,2:1195\n1856#3:1197\n1549#3:1198\n1620#3,3:1199\n1855#3,2:1202\n699#4:1135\n679#4:1138\n657#4,14:1160\n*S KotlinDebug\n*F\n+ 1 GeometryUtils.kt\ncom/onyx/android/sdk/geometry/utils/GeometryUtils\n*L\n119#1:1096,7\n124#1:1103\n124#1:1104,3\n203#1:1107\n203#1:1108,2\n281#1:1110\n288#1:1111,2\n405#1:1113\n405#1:1114,3\n406#1:1117\n406#1:1118,3\n412#1:1121\n412#1:1122,3\n416#1:1125\n416#1:1126,3\n420#1:1129\n420#1:1130,3\n450#1:1133,2\n529#1:1136\n529#1:1137\n529#1:1139,3\n529#1:1142\n649#1:1143\n649#1:1144,2\n661#1:1146\n661#1:1147,3\n673#1:1150,2\n754#1:1152,4\n762#1:1156,4\n823#1:1174,14\n836#1:1188,2\n846#1:1190,2\n856#1:1192,2\n872#1:1194\n873#1:1195,2\n872#1:1197\n954#1:1198\n954#1:1199,3\n1079#1:1202,2\n529#1:1135\n529#1:1138\n810#1:1160,14\n*E\n"
    }
.end annotation


# static fields
.field public static final ANY_LENGTH:F = 100.0f

.field public static final INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final LITTLE_LENGTH:F = 0.5f

.field public static final LITTLE_PIXEL_SIZE:F = 0.1f

.field public static final ONE_PIXEL:F = 1.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-direct {v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic atSameLine$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Landroid/graphics/RectF;Landroid/graphics/RectF;FILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->atSameLine(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p0

    return p0
.end method

.method public static synthetic cleanEdgePoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;FIILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const p2, 0x3dcccccd    # 0.1f

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/16 p3, 0xa

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->cleanEdgePoints(Ljava/util/List;FI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic computeRectAdjustMatrix$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;ZILjava/lang/Object;)Landroid/graphics/Matrix;
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 p4, p4, 0x2

    rem-int/lit8 p4, p4, 0x4

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    :cond_0
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_1

    const/4 p5, 0x0

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->computeRectAdjustMatrix(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic filterBySpacing$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->filterBySpacing(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findAllAngles$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findAllSides$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZILjava/lang/Object;)Ljava/util/List;
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p2, p4

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findAllTurningPoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZILjava/lang/Object;)Ljava/util/List;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getTurningPointThresholdPercent()F

    move-result p2

    const p8, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, p8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p7, 0x2

    const/4 p8, 0x0

    if-eqz p2, :cond_1

    move v3, p8

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    move v5, p8

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move v6, p8

    goto :goto_2

    :cond_4
    move v6, p6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllTurningPoints(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findFirstTurningPoint$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getTurningPointThresholdPercent()F

    move-result p2

    const p3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findFirstTurningPoint(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findKneePoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p2, 0x41700000    # 15.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findKneePoints(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findMatchedAngleCount$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)I
    .locals 0

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p2, p5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findMatchedAngleCount(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)I

    move-result p0

    return p0
.end method

.method public static synthetic findTurningPointFromCenterToEnd$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getTurningPointThresholdPercent()F

    move-result p2

    const p3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findTurningPointFromCenterToEnd(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic findTurningPointFromCenterToStart$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getTurningPointThresholdPercent()F

    move-result p2

    const p3, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findTurningPointFromCenterToStart(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic hasRightAngle$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLjava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const p3, 0x3e20d97c

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->hasRightAngle(Ljava/util/List;ZLjava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic hasTurningPoint$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getTurningPointThresholdPercent()F

    move-result p2

    const p6, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p2, p6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->hasTurningPoint(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllAngleAcute$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLjava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const p3, 0x3e20d97c

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleAcute(Ljava/util/List;ZLjava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllAngleMatches$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_0

    move p2, p5

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleMatches(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllAngleObtuse$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLjava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const p3, 0x3e20d97c

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleObtuse(Ljava/util/List;ZLjava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllAngleRight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;ZLjava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const p3, 0x3e20d97c

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleRight(Ljava/util/List;ZLjava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllSegmentsCurvy$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllSegmentsCurvy(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAllSegmentsStraight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllSegmentsStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAngleAcute$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAngleAcute(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAngleObtuse$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAngleObtuse(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isAngleRight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const p2, 0x3e490fdb

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAngleRight(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isHorizontal$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getParallelDefaultMistakeThreshold()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isHorizontal(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const p3, 0x3e490fdb

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic isPerpendicularTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const p3, 0x3e490fdb

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isPerpendicularTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isSegmentStraight$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/high16 p2, -0x40800000    # -1.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic isVertical$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getParallelDefaultMistakeThreshold()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isVertical(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z

    move-result p0

    return p0
.end method

.method public static synthetic resample$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getResampleSpacing(Ljava/util/List;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    new-instance p3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$resample$1;

    invoke-direct {p3, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$resample$1;-><init>(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->resample(Ljava/util/List;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toMotionEvent$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/base/data/TouchPoint;IILjava/lang/Object;)Landroid/view/MotionEvent;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->toMotionEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final adjustToStandardDirectionIfPossible(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;F)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getNearestStandardDirection(FF)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->center()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->rotate(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final atSameLine(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 p0, -0x41000000    # -0.5f

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p3, p0, v0}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p3

    mul-float/2addr p3, p0

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p3

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p3

    invoke-static {p0, p1}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p0

    iget p1, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr p1, v0

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p2, v0

    invoke-static {p1, p2}, Lkotlin/ranges/RangesKt;->rangeTo(FF)Lkotlin/ranges/ClosedFloatingPointRange;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/RangeKt;->intersected(Lkotlin/ranges/ClosedRange;Lkotlin/ranges/ClosedRange;)Z

    move-result p0

    return p0
.end method

.method public final averageDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)F
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "points"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    sget-object v2, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v2, p1, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final boundRect(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    filled-new-array {v0, p1}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final boundRect(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final boundRectFromCenter(Lcom/onyx/android/sdk/base/data/TouchPoint;FF)Landroid/graphics/RectF;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    sub-float/2addr p2, p3

    iput p2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    add-float/2addr p1, p3

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public final center(Landroid/graphics/RectF;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object p0
.end method

.method public final center(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    add-float/2addr p1, p2

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    return-object p0
.end method

.method public final cleanClosePoints(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v1, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v6

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_6

    move v4, v3

    goto :goto_3

    :cond_6
    move v4, v2

    :goto_3
    if-eqz v4, :cond_5

    move v2, v3

    :cond_7
    :goto_4
    xor-int/lit8 v1, v2, 0x1

    if-eqz v1, :cond_3

    invoke-interface {p0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-object p0
.end method

.method public final cleanEdgePoints(Ljava/util/List;FI)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;FI)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-ge p0, p3, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float/2addr v0, p2

    mul-float/2addr p3, v0

    float-to-int p2, p3

    invoke-static {p1, p0, p2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final computeLengthScale(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v1

    div-float/2addr v0, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;ZILjava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    neg-float v0, v0

    :cond_0
    return v0
.end method

.method public final computeRectAdjustMatrix(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Z)Landroid/graphics/Matrix;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Z)",
            "Landroid/graphics/Matrix;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startPoint"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stopPoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorPoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findIndexByAddress(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    add-int/2addr v0, v2

    rem-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0, p4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p2, p4, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, p4, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v2, p1, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->computeLengthScale(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result p1

    invoke-virtual {p0, v2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->computeLengthScale(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result p3

    if-eqz p5, :cond_1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p5

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, p5

    :cond_1
    new-instance p5, Landroid/graphics/Matrix;

    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result p0

    neg-float p2, p0

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-virtual {p5, p2, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p2

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-virtual {p5, p1, p3, p2, v0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {p4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p5, p0, p1, p2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    return-object p5

    :cond_2
    :goto_0
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0
.end method

.method public final computeRectByHeight(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Ljava/util/List;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "height"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    const v1, 0x3fc90fdb

    add-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    neg-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    filled-new-array {v1, v2, v3, p0}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final varargs concatTransform(Ljava/util/List;[Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;[",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "matrixs"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->concatTransform([Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final copy(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->clone()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final copyAndOffset(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dx"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "dy"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->copy()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->offset(FF)V

    return-object p0
.end method

.method public final correctDirection(Lcom/onyx/android/sdk/geometry/data/RotatedRect;)Lcom/onyx/android/sdk/geometry/data/RotatedRect;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/RotatedRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->copy()Lcom/onyx/android/sdk/geometry/data/RotatedRect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->getRotationInRad()F

    move-result p1

    sget-object v1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getParallelMistakenRad()F

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getNearestStandardDirection(FF)Ljava/lang/Float;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/geometry/data/RotatedRect;->setRotationInRad(F)V

    :cond_0
    return-object v0
.end method

.method public final degreeToRad(F)F
    .locals 2

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    float-to-double v0, v0

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public final deltaDegree(FF)F
    .locals 0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p0, p1

    const/high16 p2, 0x43340000    # 180.0f

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    sub-float p0, p1, p0

    :cond_0
    return p0
.end method

.method public final deltaRad(FF)F
    .locals 0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 p1, 0x2

    int-to-float p1, p1

    const p2, 0x40490fdb    # (float)Math.PI

    mul-float/2addr p1, p2

    rem-float/2addr p0, p1

    cmpl-float p2, p0, p2

    if-lez p2, :cond_0

    sub-float p0, p1, p0

    :cond_0
    return p0
.end method

.method public final differRate(Ljava/util/List;)F
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
            ">;)F"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->minOrThrow(Ljava/lang/Iterable;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public final distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "p1"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p2"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    float-to-double v0, p0

    const/4 p0, 0x2

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    add-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public final distanceTo(Landroid/graphics/RectF;Landroid/graphics/RectF;)F
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->intersectedWith(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x4

    new-array p0, p0, [Ljava/lang/Float;

    .line 3
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2

    .line 4
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, p0, v3

    .line 5
    iget v1, p2, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, p0, v4

    .line 6
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p0, p2

    .line 7
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->maxOrThrow(Ljava/lang/Iterable;)F

    move-result p0

    return p0
.end method

.method public final distanceTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    return p0
.end method

.method public final farthestPointPair(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;->INSTANCE:Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/algorithm/FarthestPointAlgorithm;->findFarthestPointPair(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    return-object p0
.end method

.method public final filterBySpacing(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "spacing"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v4, v3, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public final findAllAngles(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v6, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {v6, v3, v4, v5}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {v4, v0, v2, v3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {v1, p2, v0, p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object p0
.end method

.method public final findAllSides(Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v1, v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v4, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p2, v0, p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public final findAllTurningPoints(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZ)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Z",
            "Ljava/lang/Number;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minLength"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    if-eqz p3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    add-int/lit8 v6, v4, 0x1

    invoke-static {p1, v0, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->totalLineLength(Ljava/util/List;)F

    move-result v6

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {p1, v4, v6}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->totalLineLength(Ljava/util/List;)F

    move-result v4

    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result v3

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v0

    :goto_2
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {v1, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {p3}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x3

    if-eqz p5, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, p2, :cond_6

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p0, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    if-eqz p6, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-lt p3, p2, :cond_7

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object p0
.end method

.method public final findFarthestPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "points"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance p0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$findFarthestPoint$$inlined$sortedBy$1;

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$findFarthestPoint$$inlined$sortedBy$1;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-static {p2, p0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final findFirstTurningPoint(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    check-cast p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public final findIndexByAddress(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;)I
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ")I"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "element"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    move v1, p1

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_2
    return v0
.end method

.method public final findKneePoints(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kneePointDeltaDegree"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    add-int/lit8 v7, v6, -0x1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v6, v6, 0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v10, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v10, v7, v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v7

    new-instance v10, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v10, v8, v9}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v10}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v8

    invoke-virtual {p0, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v7

    invoke-virtual {p0, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaDegree(FF)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x3

    sub-int/2addr v1, v3

    :goto_1
    if-ge v3, v1, :cond_7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v6

    cmpl-float v4, v4, v6

    const/4 v6, 0x0

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_2

    :cond_1
    move v4, v6

    :goto_2
    add-int/lit8 v7, v3, -0x1

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    move v7, v5

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_3
    add-int/lit8 v8, v3, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_3

    move v9, v5

    goto :goto_4

    :cond_3
    move v9, v6

    :goto_4
    add-int/lit8 v10, v3, -0x2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    move-result v10

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    move v10, v5

    goto :goto_5

    :cond_4
    move v10, v6

    :goto_5
    add-int/lit8 v11, v3, 0x2

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    move-result v11

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    move-result v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_5

    move v6, v5

    :cond_5
    if-eqz v4, :cond_6

    if-eqz v7, :cond_6

    if-eqz v9, :cond_6

    if-eqz v10, :cond_6

    if-eqz v6, :cond_6

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    move v3, v8

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    mul-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    sget-object p2, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getPathResampleSpacingPercent()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->cleanClosePoints(Ljava/util/List;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findLongestSegment(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v1, v2, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {v3, v4, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_2

    move-object p1, v1

    move v0, v2

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    check-cast p1, Ljava/util/List;

    return-object p1

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final findMatchedAngleCount(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)I
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featurePredicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-gez p2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    return p2
.end method

.method public final findPathCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsByTurningPoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findLongestSegment(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-gt p1, v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    div-int/2addr p1, v2

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    return-object p0
.end method

.method public final findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "distance"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "directionInRad"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    float-to-double v0, p0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    float-to-double p0, p0

    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    mul-double/2addr v2, p2

    add-double/2addr p0, v2

    new-instance p2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    double-to-float p3, v0

    double-to-float p0, p0

    invoke-direct {p2, p3, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p2
.end method

.method public final findSymmetricalPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "center"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    int-to-float p0, p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    mul-float/2addr v0, p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    mul-float/2addr p0, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    new-instance p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p1
.end method

.method public final findTurningPointFromCenterToEnd(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPathCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findFirstTurningPoint(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final findTurningPointFromCenterToStart(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPathCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findFirstTurningPoint(Ljava/util/List;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    return-object p0
.end method

.method public final getBoundCollision(Ljava/util/List;Landroid/graphics/RectF;)Lcom/onyx/android/sdk/geometry/data/BoundCollision;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Landroid/graphics/RectF;",
            ")",
            "Lcom/onyx/android/sdk/geometry/data/BoundCollision;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bound"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    iget v5, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    iget v7, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v4, v4, v7

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v6

    :goto_2
    if-eqz v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    iget v7, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v7

    if-nez v4, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    if-eqz v4, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    iget v7, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v7

    if-nez v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v6

    :goto_4
    if-eqz v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    new-instance p1, Lcom/onyx/android/sdk/geometry/data/BoundCollision;

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/BoundCollision;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public final getClockwiseAngle(Lcom/onyx/android/sdk/geometry/data/AnglePoints;)F
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    neg-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->rotate(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-gez p1, :cond_0

    const p1, 0x40c90fdb

    add-float/2addr p0, p1

    :cond_0
    return p0
.end method

.method public final getLongestEdge(Ljava/util/List;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/geometry/data/TouchPointPair;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/onyx/android/sdk/base/data/TouchPoint;->Companion:Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint$Companion;->getEmpty()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    if-ge v0, v3, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v5, v6}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v7

    cmpl-float v8, v7, v4

    if-lez v8, :cond_0

    move-object v2, v5

    move-object v1, v6

    move v4, v7

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p0, v2, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p0
.end method

.method public final getNearestStandardDirection(FF)Ljava/lang/Float;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x3fc90fdb

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    int-to-float v3, v1

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    int-to-float v3, v1

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    int-to-float v3, v1

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->toUnsignedRad(F)F

    move-result p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, p2

    if-gez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOffsetTo(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)[F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x2

    new-array p1, p1, [F

    const/4 v0, 0x0

    aput p0, p1, v0

    const/4 p0, 0x1

    aput p2, p1, p0

    return-object p1
.end method

.method public final getOvalRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Landroid/graphics/RectF;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rx"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ry"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr v0, p2

    iput v0, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v0

    sub-float/2addr p2, v0

    iput p2, p0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    return-object p0
.end method

.method public final getResampleSpacing(Ljava/util/List;)F
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->boundRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RectKt;->shorterSize(Landroid/graphics/RectF;)F

    move-result p0

    sget-object p1, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getPathResampleMaxSpacingPercent()F

    move-result v0

    mul-float/2addr p0, v0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getPathResampleSpacing()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getSegmentsByKneePoints(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findKneePoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsBySplitPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getSegmentsBySplitPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "splitPoints"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-gt p0, v0, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p2, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-gt v1, v3, :cond_2

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {p1, v3, v4}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v0, :cond_1

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public final getSegmentsByTurningPoints(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v9}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllTurningPoints$default(Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;ZZILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsBySplitPoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getStrokedAnglePoints(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;Z)Lcom/onyx/android/sdk/geometry/data/AnglePoints;
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result v0

    const v1, 0x3c8efa35

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    invoke-virtual {p0, v0, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findSymmetricalPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->centerLine()Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p3

    new-instance v2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v2, p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->translateAlongPointDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getCenter()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0, v3, p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->translateAlongPointDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getPrevious()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isSameSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->getNext()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->isSameSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v2, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findPointOnVector(FLcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p3, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-direct {p3, p1, p2, p0}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p3
.end method

.method public final gravityCenter(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide v1

    new-instance p0, Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/lang/Iterable;)D

    move-result-wide p0

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    double-to-float v1, v1

    double-to-float p0, p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object v0
.end method

.method public final hasDirectionChanged(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Lcom/onyx/android/sdk/geometry/data/AnglePoints;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousDirection()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextDirection()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->previousDirection()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->nextDirection()F

    move-result p2

    sub-float/2addr p1, p2

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    cmpg-float p0, p0, p1

    const/4 p1, 0x1

    if-nez p0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    xor-int/2addr p0, p1

    return p0
.end method

.method public final hasRightAngle(Ljava/util/List;ZLjava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasRightAngle$1;

    invoke-direct {v0, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasRightAngle$1;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findMatchedAngleCount(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hasTurningPoint(Ljava/util/List;Ljava/lang/Number;ZLjava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Z",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minLength"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;

    invoke-direct {v0, p3, p1, p4, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$hasTurningPoint$1;-><init>(ZLjava/util/List;Ljava/lang/Number;Ljava/lang/Number;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final insideClosure(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/util/List;)Z
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)Z"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "points"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    new-instance v1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    move v3, p0

    move p0, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge p0, v4, :cond_3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_1
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    move v5, v0

    goto :goto_2

    :cond_1
    move v5, v2

    :goto_2
    if-eq v4, v5, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v4

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    sub-float/2addr v3, v6

    div-float/2addr v5, v3

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    add-float/2addr v5, v3

    cmpg-float v3, v4, v5

    if-gez v3, :cond_2

    move v3, v0

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$insideClosure$1;

    invoke-direct {v4, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$insideClosure$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    invoke-static {v3, v4}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->takeIfTrue(Ljava/lang/Boolean;Lkotlin/jvm/functions/Function0;)V

    add-int/lit8 v3, p0, 0x1

    move v8, v3

    move v3, p0

    move p0, v8

    goto/16 :goto_0

    :cond_3
    iget p0, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    rem-int/lit8 p0, p0, 0x2

    if-ne p0, v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    return v0
.end method

.method public final intersectedWith(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 0
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "target"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/geometry/extension/RectFKt;->copy(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public final intersectionAngle(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previous"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 2
    new-instance p2, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p2, p1, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    .line 3
    invoke-virtual {p0, v0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->intersectionAngle(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result p0

    return p0
.end method

.method public final intersectionAngle(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "other"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    sub-float/2addr p0, p1

    const p1, -0x3fb6f025

    cmpg-float p1, p0, p1

    const p2, 0x40c90fdb

    if-gez p1, :cond_0

    add-float/2addr p0, p2

    :cond_0
    const p1, 0x40490fdb    # (float)Math.PI

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    sub-float p0, p2, p0

    :cond_1
    return p0
.end method

.method public final isAllAngleAcute(Ljava/util/List;ZLjava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleAcute$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleAcute$1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleMatches(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final isAllAngleMatches(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/onyx/android/sdk/geometry/data/AnglePoints;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featurePredicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllAngles(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Iterable;

    instance-of p2, p1, Ljava/util/Collection;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/AnglePoints;

    invoke-interface {p3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-gez p2, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p2, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public final isAllAngleObtuse(Ljava/util/List;ZLjava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleObtuse$1;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleObtuse$1;

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleMatches(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final isAllAngleRight(Ljava/util/List;ZLjava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;Z",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleRight$1;

    invoke-direct {v0, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils$isAllAngleRight$1;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isAllAngleMatches(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public final isAllSegmentsCurvy(Ljava/util/List;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsByKneePoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isAllSegmentsStraight(Ljava/util/List;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "threshold"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->getSegmentsByKneePoints(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isAngleAcute(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mistakeRange"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result p0

    const p1, 0x3fc90fdb

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    add-float/2addr p2, p1

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAngleObtuse(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mistakeRange"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result p0

    const p1, 0x3fc90fdb

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAngleRight(Lcom/onyx/android/sdk/geometry/data/AnglePoints;Ljava/lang/Number;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/AnglePoints;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mistakeRange"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/AnglePoints;->absoluteAngle()F

    move-result p0

    const p1, 0x3fc90fdb

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isClockwise(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "startDir"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "endDir"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    sub-float/2addr p0, p1

    const p1, 0x40490fdb    # (float)Math.PI

    cmpl-float p1, p0, p1

    const p2, 0x40c90fdb

    if-lez p1, :cond_0

    sub-float/2addr p0, p2

    goto :goto_0

    :cond_0
    const p1, -0x3fb6f025

    cmpg-float p1, p0, p1

    if-gez p1, :cond_1

    add-float/2addr p0, p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final isHorizontal(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v3, v4, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v0, v1, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Z)Z

    move-result p0

    return p0
.end method

.method public final isParallelTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Z)Z
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result p0

    const/4 p1, 0x1

    if-nez p4, :cond_1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const p0, 0x40490fdb    # (float)Math.PI

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lcom/onyx/android/sdk/base/utils/MathUtils;->inRange$default(Lcom/onyx/android/sdk/base/utils/MathUtils;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;ZZZILjava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0
.end method

.method public final isPerpendicularTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result p1

    const p2, 0x3fc90fdb

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p1

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSegmentStraight(Ljava/util/List;Ljava/lang/Number;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            ")Z"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "threshold"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p2

    sget-object v0, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->INSTANCE:Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getLineDefaultMistakePercent()F

    move-result v1

    mul-float/2addr p2, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getLineMinMistakenDistance()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atLeast(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/geometry/data/GeometryConfigurations;->getLineMaxMistakenDistance()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, p2, v0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->atMost(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final isVertical(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;)Z
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mistakeRange"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {v3, v2, v4}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    invoke-direct {v0, v1, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isParallelTo(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Z)Z

    move-result p0

    return p0
.end method

.method public final leftTop(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final length(Ljava/util/List;)F
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TouchPoint;

    new-instance v4, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v4, v2, v3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v4}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v2

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final lengthDifferRateToShorter(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/base/utils/MathUtils;->differRateToShorter(Ljava/lang/Number;Ljava/lang/Number;)F

    move-result p0

    return p0
.end method

.method public final longer(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "a"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result v0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public final maxDeltaDegree(Ljava/util/List;)F
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->maxDeltaRad(Ljava/util/List;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->radToDegree(F)F

    move-result p0

    return p0
.end method

.method public final maxDeltaRad(Ljava/util/List;)F
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    new-instance p0, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v0, v2}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v0

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-interface {p1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p1, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-gt v8, v9, :cond_3

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v8, v5, v7}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v8}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result v7

    sget-object v9, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v9, p0, v8}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->isClockwise(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v8}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toSignInteger(Ljava/lang/Boolean;)I

    move-result v8

    invoke-virtual {v9, v0, v7}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->deltaRad(FF)F

    move-result v7

    int-to-float v8, v8

    mul-float/2addr v7, v8

    cmpg-float v8, v7, v4

    if-gez v8, :cond_4

    move v4, v7

    :cond_4
    cmpl-float v8, v7, v1

    if-lez v8, :cond_2

    move v1, v7

    goto :goto_0

    :cond_5
    sub-float/2addr v1, v4

    return v1
.end method

.method public final nearBoundRect(Lcom/onyx/android/sdk/base/data/TouchPoint;Landroid/graphics/RectF;FF)Z
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "point"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "bound"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    iget v0, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    const/4 v0, 0x1

    if-gez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p3

    if-gez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    iget p3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p4

    if-gez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final onSameXSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "x1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "x2"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onSameYSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "y1"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "y2"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p0, p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p2

    sub-float/2addr p1, p2

    sget-object p2, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/base/utils/MathUtils;->signFactor(Ljava/lang/Number;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final radToDegree(F)F
    .locals 2

    const/high16 p0, 0x43340000    # 180.0f

    mul-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    double-to-float p0, p0

    return p0
.end method

.method public final removeEqualsEndPoint(Ljava/util/List;F)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->distance(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-object p1
.end method

.method public final resample(Ljava/util/List;Ljava/lang/Number;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Ljava/lang/Number;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/Path;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "spacing"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "compose"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p3}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->createPathFrom(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Landroid/graphics/Path;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/onyx/android/sdk/geometry/extension/PathKt;->resample(Landroid/graphics/Path;Ljava/lang/Number;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final rightBottom(Ljava/util/List;)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-direct {p0, v0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final rotationAngleForParallel(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->intersectionAngle(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Lcom/onyx/android/sdk/geometry/data/TouchPointPair;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const p2, 0x3fc90fdb

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p1

    neg-float p1, p1

    const p2, 0x40490fdb    # (float)Math.PI

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    sub-float/2addr p2, p0

    mul-float p0, p1, p2

    :cond_0
    return p0
.end method

.method public final rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;
    .locals 11
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "center"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FFFFIIJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p3, v3

    mul-float/2addr v0, p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v3

    sub-float/2addr p3, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr p3, v3

    sub-float/2addr v0, p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p3

    add-float/2addr v0, p3

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setX(F)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p3

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v0, v3

    mul-float/2addr p3, v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    add-float/2addr p3, p2

    invoke-virtual {p0, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setY(F)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setTimestamp(J)V

    .line 5
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getPressure()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->setPressure(F)V

    return-object p0
.end method

.method public final rotationTransform(Ljava/util/List;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Ljava/util/List;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            "F)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "center"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    .line 10
    sget-object v1, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->INSTANCE:Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;

    invoke-virtual {v1, v0, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->rotationTransform(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;F)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    .line 11
    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final slope(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)F
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "startPoint"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "endPoint"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    sub-float/2addr p0, v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float p1, p0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const p0, 0x7effffff

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr p1, p0

    return p1

    :cond_1
    div-float/2addr p2, p0

    return p2
.end method

.method public final toMotionEvent(Lcom/onyx/android/sdk/base/data/TouchPoint;I)Landroid/view/MotionEvent;
    .locals 8
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v6

    const/4 v7, 0x0

    move v4, p2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p0

    const-string p1, "obtain(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toUnsignedDegree(F)F
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x168

    int-to-float p0, p0

    add-float/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final toUnsignedRad(F)F
    .locals 0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x40c90fdb

    add-float/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final totalLineLength(Ljava/util/List;)F
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;)F"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findAllSides(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->length()F

    move-result p1

    float-to-double v2, p1

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    double-to-float p0, v0

    return p0
.end method

.method public final transform(Ljava/util/List;Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Iterable;

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->transform(Landroid/graphics/Matrix;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final translateAlongPointDirection(Lcom/onyx/android/sdk/geometry/data/TouchPointPair;Ljava/lang/Number;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/geometry/data/TouchPointPair;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "distance"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->findCrossPoint(Lcom/onyx/android/sdk/base/data/TouchPoint;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {v1, v0, p3}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->direction()F

    move-result p3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP1()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;->getP2()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->findPointByDistance(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;

    invoke-direct {p1, v0, p0}, Lcom/onyx/android/sdk/geometry/data/TouchPointPair;-><init>(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-object p1
.end method

.method public final vertexPoints(Landroid/graphics/RectF;)Ljava/util/List;
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TouchPoint;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v1, v2, v3}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    new-instance v2, Lcom/onyx/android/sdk/base/data/TouchPoint;

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;-><init>(FF)V

    filled-new-array {p0, v0, v1, v2}, [Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final willXSideChangeAfterOffset(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dx"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->onSameXSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final willYSideChangeAfterOffset(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Number;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p2

    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result p3

    add-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/onyx/android/sdk/geometry/utils/GeometryUtils;->onSameYSide(Lcom/onyx/android/sdk/base/data/TouchPoint;Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
