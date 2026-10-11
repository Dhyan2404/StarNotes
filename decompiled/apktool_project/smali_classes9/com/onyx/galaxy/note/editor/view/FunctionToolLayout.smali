.class public final Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;
.super Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;,
        Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFunctionToolLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1247:1\n256#2,2:1248\n256#2,2:1250\n326#2,4:1252\n326#2,4:1256\n172#2,2:1260\n172#2,2:1263\n254#2:1266\n254#2:1270\n254#2:1271\n1855#3:1262\n1856#3:1265\n288#3,2:1268\n1#4:1267\n*S KotlinDebug\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n*L\n507#1:1248,2\n508#1:1250,2\n619#1:1252,4\n626#1:1256,4\n635#1:1260,2\n665#1:1263,2\n853#1:1266\n1213#1:1270\n1240#1:1271\n661#1:1262\n661#1:1265\n971#1:1268,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0010$\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0093\u0002B\u0015\u0008\u0016\u0012\u0008\u0010\u008b\u0002\u001a\u00030\u008a\u0002\u00a2\u0006\u0006\u0008\u008c\u0002\u0010\u008d\u0002B#\u0008\u0016\u0012\u0008\u0010\u008b\u0002\u001a\u00030\u008a\u0002\u0012\u000c\u0008\u0002\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008e\u0002\u00a2\u0006\u0006\u0008\u008c\u0002\u0010\u0090\u0002B,\u0008\u0016\u0012\u0008\u0010\u008b\u0002\u001a\u00030\u008a\u0002\u0012\u000c\u0008\u0002\u0010\u008f\u0002\u001a\u0005\u0018\u00010\u008e\u0002\u0012\u0007\u0010\u0091\u0002\u001a\u00020<\u00a2\u0006\u0006\u0008\u008c\u0002\u0010\u0092\u0002J\u0008\u0010\u0004\u001a\u00020\u0003H\u0002J\u0008\u0010\u0005\u001a\u00020\u0003H\u0002J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002J\u0008\u0010\u000c\u001a\u00020\u0003H\u0002J\u0008\u0010\r\u001a\u00020\u0003H\u0002J\u0010\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0011\u001a\u00020\u0003H\u0002J\u0008\u0010\u0012\u001a\u00020\u0003H\u0002J\u0010\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0010\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0008\u0010\u0016\u001a\u00020\u0003H\u0002J\u0008\u0010\u0017\u001a\u00020\u0003H\u0002J\u0008\u0010\u0018\u001a\u00020\u0003H\u0002J\u0008\u0010\u0019\u001a\u00020\u0003H\u0002J\u0008\u0010\u001a\u001a\u00020\u0003H\u0002J\u0008\u0010\u001b\u001a\u00020\u0003H\u0002J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0008\u0010\u001d\u001a\u00020\u0003H\u0002J\u0008\u0010\u001e\u001a\u00020\u0003H\u0002J\u0008\u0010\u001f\u001a\u00020\u0003H\u0002J\u0008\u0010 \u001a\u00020\u0003H\u0002J\u0008\u0010!\u001a\u00020\u0003H\u0002J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020\u0006H\u0002J\u001a\u0010&\u001a\u00020$2\u0006\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010%\u001a\u00020$H\u0002J\u0008\u0010\'\u001a\u00020\u0003H\u0002J\u0008\u0010(\u001a\u00020\u0003H\u0002J\u0008\u0010)\u001a\u00020\u0003H\u0002J\u0008\u0010*\u001a\u00020\u0003H\u0002J\u0010\u0010-\u001a\u00020\u00032\u0006\u0010,\u001a\u00020+H\u0002J\u0008\u0010.\u001a\u00020\u0003H\u0002J\u001e\u00102\u001a\u00020\u00032\u0006\u0010/\u001a\u00020$2\u000c\u00101\u001a\u0008\u0012\u0004\u0012\u00020+00H\u0002J\"\u00105\u001a\u00020\u00032\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020+2\u0008\u0008\u0002\u0010/\u001a\u00020$H\u0002J\u0008\u00106\u001a\u00020\u0003H\u0002J\u0008\u00107\u001a\u00020\u0003H\u0002J\u0008\u00108\u001a\u00020\u0003H\u0002J(\u0010>\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\u0008\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010=\u001a\u00020<H\u0002J\u001e\u0010C\u001a\u00020\u00032\u000c\u0010@\u001a\u0008\u0012\u0004\u0012\u00020\u00060?2\u0006\u0010B\u001a\u00020AH\u0002J(\u0010E\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\u0008\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010D\u001a\u00020<H\u0002J(\u0010F\u001a\u00020\u00032\u0016\u0010;\u001a\u0012\u0012\u0004\u0012\u00020\u000609j\u0008\u0012\u0004\u0012\u00020\u0006`:2\u0006\u0010D\u001a\u00020<H\u0002J\u0008\u0010G\u001a\u00020\u0003H\u0002J\u0008\u0010H\u001a\u00020\u0003H\u0002J\u0010\u0010I\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0008\u0010J\u001a\u00020\u0003H\u0002J\u0008\u0010K\u001a\u00020\u0003H\u0002J\u0008\u0010L\u001a\u00020\u0003H\u0002J\u0008\u0010M\u001a\u00020\u0003H\u0002J\u0008\u0010N\u001a\u00020\u0003H\u0002J\u0010\u0010P\u001a\u00020\u00032\u0006\u0010O\u001a\u00020$H\u0002J\u0008\u0010Q\u001a\u00020\u0003H\u0002J\u0010\u0010R\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u0010\u0010S\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010T\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0006H\u0002J\u001a\u0010V\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00062\u0008\u0008\u0002\u0010U\u001a\u00020<H\u0002J\u0008\u0010W\u001a\u00020\u0003H\u0002J\u0010\u0010Z\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020XH\u0002J\u0008\u0010[\u001a\u00020\u0003H\u0002J\u0008\u0010\\\u001a\u00020\u0003H\u0002J\u0008\u0010]\u001a\u00020\u0003H\u0002J\u0012\u0010`\u001a\u00020\u00032\u0008\u0010_\u001a\u0004\u0018\u00010^H\u0002J\u0018\u0010a\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010_\u001a\u00020^H\u0002J\u0010\u0010d\u001a\u00020\u00032\u0006\u0010c\u001a\u00020bH\u0002J\u0018\u0010g\u001a\u00020\u00032\u0006\u0010c\u001a\u00020b2\u0006\u0010f\u001a\u00020eH\u0002J\u0010\u0010h\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020XH\u0002J\u0010\u0010k\u001a\u00020\u00032\u0006\u0010j\u001a\u00020iH\u0002J\u0008\u0010l\u001a\u00020\u0003H\u0002J\u0010\u0010n\u001a\u00020\u00032\u0006\u0010m\u001a\u00020$H\u0002J(\u0010r\u001a\u00020\u00032\u0006\u0010Y\u001a\u00020o2\u0016\u0008\u0002\u0010q\u001a\u0010\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020X\u0018\u00010pH\u0002J\u0008\u0010s\u001a\u00020\u0003H\u0002J\u0018\u0010v\u001a\u00020\u00032\u0006\u0010t\u001a\u00020+2\u0006\u0010u\u001a\u00020+H\u0002J\u0008\u0010w\u001a\u00020\u0003H\u0002J\u0008\u0010x\u001a\u00020\u0003H\u0002J\u0014\u0010y\u001a\u00020\u00032\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010+H\u0002J\u000e\u0010z\u001a\u00020\u00032\u0006\u0010c\u001a\u00020bJ\u0006\u0010{\u001a\u00020\u0003J\u0006\u0010|\u001a\u00020\u0003J\u000e\u0010}\u001a\u00020\u00032\u0006\u0010O\u001a\u00020$J\u0006\u0010~\u001a\u00020\u0003J\u0008\u0010\u007f\u001a\u00020\u0003H\u0014J\t\u0010\u0080\u0001\u001a\u00020\u0003H\u0014J\u0012\u0010\u0082\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0081\u0001H\u0007J\u0013\u0010\u0085\u0001\u001a\u00020\u00032\u0008\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0087\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0086\u0001H\u0007J\u0012\u0010\u0089\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0088\u0001H\u0007J\u0012\u0010\u008b\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008a\u0001H\u0007J\u0012\u0010\u008d\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008c\u0001H\u0007J\u0012\u0010\u008f\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u008e\u0001H\u0007J\u0012\u0010\u0091\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0090\u0001H\u0007J\u0012\u0010\u0093\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0092\u0001H\u0007J\u0012\u0010\u0095\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0094\u0001H\u0007J\u0012\u0010\u0097\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0096\u0001H\u0007J\u0012\u0010\u0099\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u0098\u0001H\u0007J\u0012\u0010\u009b\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009a\u0001H\u0007J\u0012\u0010\u009d\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009c\u0001H\u0007J\u0012\u0010\u009f\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u009e\u0001H\u0007J\u0012\u0010\u00a1\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00a0\u0001H\u0007J\u0012\u0010\u00a3\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00a2\u0001H\u0007J\u0012\u0010\u00a5\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00a4\u0001H\u0007J\u0012\u0010\u00a7\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00a6\u0001H\u0007J\u0012\u0010\u00a9\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00a8\u0001H\u0007J\u0012\u0010\u00ab\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00aa\u0001H\u0007J\u0012\u0010\u00ad\u0001\u001a\u00020\u00032\u0007\u0010Y\u001a\u00030\u00ac\u0001H\u0007R!\u0010\u00b3\u0001\u001a\u00030\u00ae\u00018VX\u0096\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00af\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R*\u0010\u00b5\u0001\u001a\u00030\u00b4\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001\"\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R*\u0010\u00bc\u0001\u001a\u00030\u00bb\u00018\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00bc\u0001\u0010\u00bd\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001\"\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001R0\u0010\u00c3\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c2\u0001008\u0006@\u0006X\u0086.\u00a2\u0006\u0018\n\u0006\u0008\u00c3\u0001\u0010\u00c4\u0001\u001a\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001\"\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001Rc\u0010\u00d5\u0001\u001a<\u0012\u0017\u0012\u00150\u00ca\u0001\u00a2\u0006\u000f\u0008\u00cb\u0001\u0012\n\u0008\u00cc\u0001\u0012\u0005\u0008\u0008(\u00cd\u0001\u0012\u0016\u0012\u00140$\u00a2\u0006\u000f\u0008\u00cb\u0001\u0012\n\u0008\u00cc\u0001\u0012\u0005\u0008\u0008(\u00ce\u0001\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00c9\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001\u001a\u0006\u0008\u00d1\u0001\u0010\u00d2\u0001\"\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R,\u0010\u00dd\u0001\u001a\u0005\u0018\u00010\u00d6\u00018\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00d7\u0001\u0010\u00d8\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00da\u0001\"\u0006\u0008\u00db\u0001\u0010\u00dc\u0001R!\u0010\u00e2\u0001\u001a\u00030\u00de\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00df\u0001\u0010\u00b0\u0001\u001a\u0006\u0008\u00e0\u0001\u0010\u00e1\u0001R\u001a\u0010c\u001a\u0004\u0018\u00010b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00e3\u0001\u0010\u00e4\u0001R+\u0010\u00ea\u0001\u001a\u0004\u0018\u00010b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u00e5\u0001\u0010\u00e4\u0001\u001a\u0006\u0008\u00e6\u0001\u0010\u00e7\u0001\"\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001R\u001c\u0010\u00ee\u0001\u001a\u0005\u0018\u00010\u00eb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001R\u001c\u0010\u00f2\u0001\u001a\u0005\u0018\u00010\u00ef\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001R\u001c\u0010\u00f6\u0001\u001a\u0005\u0018\u00010\u00f3\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u00f5\u0001R\u001c\u0010\u00fa\u0001\u001a\u0005\u0018\u00010\u00f7\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001R\u001c\u0010\u00fe\u0001\u001a\u0005\u0018\u00010\u00fb\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R\u001b\u0010\u0081\u0002\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u0080\u0002R\u001c\u0010\u0085\u0002\u001a\u0005\u0018\u00010\u0082\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0002\u0010\u0084\u0002R\u0015\u0010\u0089\u0002\u001a\u00030\u0086\u00028F\u00a2\u0006\u0008\u001a\u0006\u0008\u0087\u0002\u0010\u0088\u0002\u00a8\u0006\u0094\u0002"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;",
        "Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;",
        "Landroidx/lifecycle/LifecycleOwner;",
        "",
        "T0",
        "u0",
        "Landroid/view/View;",
        "moreSettingView",
        "listItemView",
        "Lcom/onyx/galaxy/note/editor/data/ShortcutType;",
        "shortcutType",
        "l0",
        "a0",
        "c0",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;",
        "exportArgs",
        "m1",
        "X",
        "k0",
        "view",
        "T",
        "f0",
        "V",
        "W",
        "n0",
        "i0",
        "Z",
        "h0",
        "Y",
        "b0",
        "U",
        "g0",
        "e0",
        "j0",
        "anchorView",
        "j1",
        "",
        "enableRtl",
        "U0",
        "o0",
        "Q0",
        "r0",
        "C1",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "N1",
        "F1",
        "showTipToast",
        "Lkotlin/Function0;",
        "change",
        "M",
        "oldTouchMode",
        "newTouchMode",
        "L",
        "K",
        "g1",
        "G1",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "viewList",
        "",
        "viewSize",
        "H1",
        "",
        "list",
        "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;",
        "displayType",
        "B1",
        "margin",
        "I1",
        "J1",
        "K0",
        "O",
        "q1",
        "Z0",
        "W0",
        "z1",
        "w1",
        "y1",
        "show",
        "t1",
        "e1",
        "n1",
        "r1",
        "o1",
        "targetPage",
        "k1",
        "x1",
        "",
        "event",
        "X0",
        "f1",
        "R",
        "S",
        "Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;",
        "docProgress",
        "D1",
        "v1",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "I",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;",
        "dataSet",
        "J",
        "m0",
        "Lcom/onyx/android/sdk/data/ToolFunction;",
        "toolFunction",
        "Y0",
        "Q",
        "enable",
        "i1",
        "",
        "",
        "dataMap",
        "a1",
        "c1",
        "currentModel",
        "newModel",
        "d1",
        "A1",
        "K1",
        "L1",
        "setEditorBundle",
        "updateToolsIconByScreen",
        "toggleTabIndicator",
        "showTabIndicator",
        "stopMedia",
        "onDetachedFromWindow",
        "onAttachedToWindow",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;",
        "onDocumentOpenSuccessEvent",
        "Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;",
        "audioInfoBean",
        "onAudioInfoBean",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;",
        "onAudioShapeBeanEvent",
        "Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;",
        "onNetworkChange",
        "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;",
        "onSyncNoteProgressChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShowLayerPopupEvent;",
        "onShowLayerPopupEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;",
        "onChangeTouchModeEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;",
        "onNoteTabDataChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;",
        "onEditorBundleChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/DismissCounterSettingEvent;",
        "onDismissCounterSettingEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;",
        "onShowCounterSettingEvent",
        "Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;",
        "onEditNoteEncryptionChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;",
        "onStartActivateDocumentEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/AudioPermissionGratedEvent;",
        "onAudioPermissionGratedEvent",
        "Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;",
        "onShortcutBarChangeEvent",
        "Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;",
        "onContainerRectChangedEvent",
        "Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;",
        "onFunctionToolPopupHideEvent",
        "Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;",
        "onFunctionToolPopupDismissEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;",
        "onDocumentStateEvent",
        "Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;",
        "onScreenOnEvent",
        "Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;",
        "onCheckEditorAutoReLockEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RealtimeBeautifyModeUpdatedEvent;",
        "onRealtimeBeautifyModeUpdatedEvent",
        "Landroidx/lifecycle/LifecycleRegistry;",
        "h",
        "Lkotlin/Lazy;",
        "getLifecycle",
        "()Landroidx/lifecycle/LifecycleRegistry;",
        "lifecycle",
        "Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;",
        "setBinding",
        "(Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;)V",
        "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;",
        "shortcutBarBinding",
        "Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;",
        "getShortcutBarBinding",
        "()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;",
        "setShortcutBarBinding",
        "(Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;)V",
        "Landroid/graphics/Rect;",
        "getEditorContainerRectFunc",
        "Lkotlin/jvm/functions/Function0;",
        "getGetEditorContainerRectFunc",
        "()Lkotlin/jvm/functions/Function0;",
        "setGetEditorContainerRectFunc",
        "(Lkotlin/jvm/functions/Function0;)V",
        "Lkotlin/Function2;",
        "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
        "Lkotlin/ParameterName;",
        "name",
        "type",
        "left",
        "i",
        "Lkotlin/jvm/functions/Function2;",
        "getToggleSideBarLayoutFunc",
        "()Lkotlin/jvm/functions/Function2;",
        "setToggleSideBarLayoutFunc",
        "(Lkotlin/jvm/functions/Function2;)V",
        "toggleSideBarLayoutFunc",
        "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;",
        "j",
        "Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;",
        "getFunctionToolListener",
        "()Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;",
        "setFunctionToolListener",
        "(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;)V",
        "functionToolListener",
        "Lcom/onyx/galaxy/note/category/view/TransitionController;",
        "k",
        "getTransitionController",
        "()Lcom/onyx/galaxy/note/category/view/TransitionController;",
        "transitionController",
        "l",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "m",
        "getDocManagerBundle",
        "()Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "setDocManagerBundle",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
        "docManagerBundle",
        "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;",
        "n",
        "Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;",
        "audioViewModel",
        "Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;",
        "o",
        "Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;",
        "layerPopup",
        "Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;",
        "p",
        "Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;",
        "counterSettingWindow",
        "Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;",
        "q",
        "Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;",
        "shortcutBarMoreFunctionPopup",
        "Landroid/os/CountDownTimer;",
        "r",
        "Landroid/os/CountDownTimer;",
        "countDownTimer",
        "s",
        "Ljava/lang/Integer;",
        "timerObserver",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "t",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "noteEncryptionLoginDialog",
        "Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;",
        "getIvTabIndicator",
        "()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;",
        "ivTabIndicator",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "defStyle",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "FunctionToolListener",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFunctionToolLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1247:1\n256#2,2:1248\n256#2,2:1250\n326#2,4:1252\n326#2,4:1256\n172#2,2:1260\n172#2,2:1263\n254#2:1266\n254#2:1270\n254#2:1271\n1855#3:1262\n1856#3:1265\n288#3,2:1268\n1#4:1267\n*S KotlinDebug\n*F\n+ 1 FunctionToolLayout.kt\ncom/onyx/galaxy/note/editor/view/FunctionToolLayout\n*L\n507#1:1248,2\n508#1:1250,2\n619#1:1252,4\n626#1:1256,4\n635#1:1260,2\n665#1:1263,2\n853#1:1266\n1213#1:1270\n1240#1:1271\n661#1:1262\n661#1:1265\n971#1:1268,2\n*E\n"
    }
.end annotation


# instance fields
.field public binding:Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

.field public getEditorContainerRectFunc:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final k:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public p:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public r:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public s:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public shortcutBarBinding:Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

.field public t:Lcom/onyx/android/sdk/ui/CommonDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$lifecycle$2;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$lifecycle$2;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->h:Lkotlin/Lazy;

    .line 6
    sget-object p1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$transitionController$2;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$transitionController$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k:Lkotlin/Lazy;

    .line 7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->T0()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic A(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->E0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final A0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->g0()V

    return-void
.end method

.method public static synthetic B(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->e0()V

    return-void
.end method

.method public static synthetic C(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->O0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final C0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k0()V

    return-void
.end method

.method public static synthetic D(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->G0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final D0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->T(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final E0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->f0(Landroid/view/View;)V

    return-void
.end method

.method public static final E1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$ivSyncStatus"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->v1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    return-void
.end method

.method public static synthetic F(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->N0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final F0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->a0()V

    return-void
.end method

.method public static synthetic G(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    return-void
.end method

.method public static final G0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->U()V

    return-void
.end method

.method public static synthetic H(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->J0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final H0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->c0()V

    return-void
.end method

.method public static final I0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Z()V

    return-void
.end method

.method public static final J0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->h0()V

    return-void
.end method

.method public static final L0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V()V

    return-void
.end method

.method public static final M0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->y1()V

    return-void
.end method

.method public static synthetic M1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->L1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method

.method public static synthetic N(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->L(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V

    return-void
.end method

.method public static final N0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->y1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->w1()V

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public static final O0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q1(Landroid/view/View;)V

    return-void
.end method

.method public static final P(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTitleCloud:Landroid/widget/FrameLayout;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public static final P0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->setPlaybackSpeed()V

    :cond_0
    return-void
.end method

.method public static final R0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i0()V

    return-void
.end method

.method public static final S0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n0()V

    return-void
.end method

.method public static synthetic V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->U0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getShortcutBarMoreFunctionPopup$p(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    return-object p0
.end method

.method public static final synthetic access$handleShortcutClick(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l0(Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/data/ShortcutType;)V

    return-void
.end method

.method public static final synthetic access$handleViewModelEvent(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->m0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$onRecordButtonClick(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->W0()V

    return-void
.end method

.method public static final synthetic access$postEvent(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$shortcutsEnable(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i1(Z)V

    return-void
.end method

.method public static final synthetic access$showExportDialog(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->m1(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V

    return-void
.end method

.method public static final synthetic access$showPlayerView(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t1(Z)V

    return-void
.end method

.method public static final synthetic access$updateShortcutViews(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->K1()V

    return-void
.end method

.method public static synthetic b(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    return-void
.end method

.method public static synthetic b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->a1(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic c(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->C0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final d0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$loadingDialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic e(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->u1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V

    return-void
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->h1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V

    return-void
.end method

.method private final getTransitionController()Lcom/onyx/galaxy/note/category/view/TransitionController;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/TransitionController;

    return-object p0
.end method

.method public static synthetic h(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->B0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final h1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/TakeScreenCaptureEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic i(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->w0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->F0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->S0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic m(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->P0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->H0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->y0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->R0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final p0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j0()V

    return-void
.end method

.method public static final p1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    return-void
.end method

.method public static synthetic q(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->P(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    return-void
.end method

.method public static final q0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->v0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->E1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;Landroid/view/View;)V

    return-void
.end method

.method public static final s0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b0()V

    return-void
.end method

.method public static final s1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    return-void
.end method

.method public static synthetic t(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->d0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static final t0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b0()V

    return-void
.end method

.method public static synthetic u(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->L0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final u1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/event/ShowPlayerViewEvent;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->D0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final v0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->R()V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitNoteDocumentEvent;-><init>()V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic w(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->x0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final w0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X()V

    return-void
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->I0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final x0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/data/ToolFunction;->CLOUD_SYNC:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_cloudSync_0001"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->x1()V

    return-void
.end method

.method public static synthetic y(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final y0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->r1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->M0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    return-void
.end method

.method public static final z0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getTransitionController()Lcom/onyx/galaxy/note/category/view/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/TransitionController;->onNext()V

    return-void
.end method

.method public final B1(Ljava/util/List;Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;",
            ")V"
        }
    .end annotation

    sget-object p0, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-ne p2, p0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_16:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    :goto_0
    float-to-int v0, v0

    if-ne p2, p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_4:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget p2, Lcom/onyx/android/sdk/device/R$dimen;->dp_5:I

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    :goto_1
    float-to-int p0, p0

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, p0, p0, p0, p0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final C1()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isRealtimeBeautifyEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeMode:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v2, "ivRealtimeMode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivNonRealtimeMode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v1, "ivNonRealtimeMode"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final D1(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;->loadOnyxSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->progressSync:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const-string v2, "progressSync"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivSyncStatus:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v3, "ivSyncStatus"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s:Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    sget-object v4, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncing()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getProgress()I

    move-result p0

    invoke-virtual {v1, p0, v4}, Lcom/google/android/material/progressindicator/BaseProgressIndicator;->setProgressCompat(IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result v3

    if-eqz v3, :cond_5

    sget v3, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_error:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    new-instance v3, Lcom/sunia/HTREnginev2/yxg;

    invoke-direct {v3, p0, v2, p1}, Lcom/sunia/HTREnginev2/yxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p1

    if-eqz p1, :cond_6

    sget p1, Lcom/onyx/galaxy/note/R$drawable;->icon_sync_succeed:I

    invoke-virtual {v2, p1}, Lcom/onyx/android/sdk/theme/widgets/TintImageView;->setImageResource(I)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$updateCloudSync$3;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$updateCloudSync$3;-><init>(Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {p1, v5, v6, v3}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->timer(JLcom/onyx/android/sdk/base/utils/RxTimerUtil$TimerObserver;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s:Ljava/lang/Integer;

    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncing()Z

    move-result p0

    invoke-static {v1, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncFail()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->isSyncSuccess()Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const/4 v4, 0x1

    :cond_8
    invoke-static {v2, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final F1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->updateEncryptionIcon()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final G1()V
    .locals 11

    sget-object v0, Lcom/onyx/android/sdk/device/DeviceFactory;->INSTANCE:Lcom/onyx/android/sdk/device/DeviceFactory;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/DeviceFactory;->getScreenDevice()Lcom/onyx/android/sdk/device/IScreen;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/device/IScreen;->getScreenInfo()Lcom/onyx/android/sdk/device/bean/ScreenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/device/bean/ScreenInfo;->getScreenDisplayType()Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;->PHONE:Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;

    if-ne v0, v1, :cond_0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_32:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_40:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    :goto_0
    float-to-int v2, v2

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    :goto_1
    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v4, "ivRealtimeSettings"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v4, 0x11

    new-array v4, v4, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivBack:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v6, "ivBack"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v8, "ivCustomShortcut"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    aput-object v5, v4, v9

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRecord:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivRecord"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAudioSetNormal:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v10, "ivAudioSetNormal"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAudioSetPreview:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v10, "ivAudioSetPreview"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x4

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAudioSetNewRecord:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v10, "ivAudioSetNewRecord"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x5

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeMode:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v10, "ivRealtimeMode"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x6

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeModeInner:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivRealtimeModeInner"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x7

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivNonRealtimeMode:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivNonRealtimeMode"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x8

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivReadingModeNote:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivReadingModeNote"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x9

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivReadingModeReading:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivReadingModeReading"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xa

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTouchModeStylus:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivTouchModeStylus"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xb

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTouchModeFinger:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivTouchModeFinger"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xc

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivEncryptionLock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivEncryptionLock"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xd

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivEncryptionUnlock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v10, "ivEncryptionUnlock"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xe

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivFullScreen:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v10, "ivFullScreen"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0xf

    aput-object v5, v4, v10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivNoteMode:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v10, "ivNoteMode"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x10

    aput-object v5, v4, v10

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    new-array v5, v9, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v10

    iget-object v10, v10, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivBack:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v10, v5, v7

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    new-array v6, v9, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v9

    iget-object v9, v9, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v6, v7

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p0, v5, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->I1(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v6, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->J1(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v4, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->H1(Ljava/util/ArrayList;I)V

    invoke-virtual {p0, v3, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->B1(Ljava/util/List;Lcom/onyx/android/sdk/device/bean/ScreenDisplayType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTabIndicator:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v1, "ivTabIndicator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    if-eqz v1, :cond_3

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_12:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_86:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_36:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/onyx/galaxy/note/R$drawable;->ic_record_pause:I

    invoke-static {v0}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v7, v7, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->sp_14:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v7, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_5:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final H1(Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final I(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getAudioShapeBeanList()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->onAudioShapeBeanEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->hasRecordFile()Z

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    const-string p1, "view_galaxy_audioRecord_0003"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final I1(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final J(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->destroy()V

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v0, p2}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setAudioDataSet(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p1

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->setAudioViewModel(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->bindAudioModule(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$2;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$2;-><init>(Ljava/lang/Object;)V

    invoke-static {p1, p0, p2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    :cond_2
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getNewRecordTip()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$bindAudioViewModel$3;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$e;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method

.method public final J1(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iput p2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final K()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_CAMERA_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_CAMERA_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestCameraPermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$a;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final K0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->recordLayout:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v0, "recordLayout"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/cyg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cyg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioClose:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnAudioClose"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/dyg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dyg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAudioSet:Lcom/onyx/android/sdk/theme/widgets/TintFrameLayout;

    const-string v0, "ivAudioSet"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/eyg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/eyg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->btnAudioMore:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "btnAudioMore"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/fyg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fyg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->tvPlaySpeed:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvPlaySpeed"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/gyg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/gyg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final K1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    const-string v1, "playLayout"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->updateShortcutViews(Z)V

    return-void
.end method

.method public final L(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V
    .locals 2

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;

    invoke-direct {v1, p1, p2}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->N1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->isFingerMode()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p1, Lcom/onyx/galaxy/note/R$string;->finger_scribble_tip:I

    const/4 p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final L1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->updateTouchModeIcon(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;->onReadingModeChanged()V

    :cond_0
    return-void
.end method

.method public final M(ZLkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v2, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;

    sget-object v3, Lcom/onyx/android/sdk/data/ToolFunction;->WRITING_MODE:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;-><init>(Lcom/onyx/android/sdk/data/ToolFunction;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->d1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0, v0, p2, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->L(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Z)V

    return-void
.end method

.method public final N1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->L1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final O()V
    .locals 8

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckConfig(Z)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;->setCheckSpace(Z)V

    sget-object v2, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/replicator/note/action/CheckNoteSyncConditionAction;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCloudSyncCheckArgs;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/bxg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v3

    const-string p0, "doFinally(...)"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Q()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->INSTANCE:Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/utils/AutoReLockNoteManager;->checkEditorAutoReLockObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$b;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final Q0()V
    .locals 7

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->N1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivReadingMode:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v0, "ivReadingMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/wxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/wxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTouchMode:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v0, "ivTouchMode"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/ayg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ayg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final R()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->S()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final S()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public final T(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/ToolFunction;->ADD_PAGE:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_page_add_0001"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n1(Landroid/view/View;)V

    return-void
.end method

.method public final T0()V
    .locals 10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    const-string v2, "inflate(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setBinding(Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->getViewBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setShortcutBarBinding(Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;)V

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getTransitionController()Lcom/onyx/galaxy/note/category/view/TransitionController;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v3, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    const-string v0, "titleLayout"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    new-instance v7, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$initView$1;

    invoke-direct {v7, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$initView$1;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/onyx/galaxy/note/category/view/TransitionController;->subscribeTransitionDebounce$default(Lcom/onyx/galaxy/note/category/view/TransitionController;Landroid/view/ViewGroup;Landroidx/transition/Transition;JLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->u0()V

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->isTabOptionShow()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->showTabIndicator(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->K0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Q0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->r0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->O()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final U()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getContext(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/view/dialog/PageMarginAdjustDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public final U0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z
    .locals 0

    if-eqz p2, :cond_0

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object p2, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p0

    return p0
.end method

.method public final V()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getRecorderViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/RecorderViewModel;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v2, "btnRecord"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->getIdleStateTag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Z0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z1()V

    :cond_2
    :goto_1
    return-void
.end method

.method public final W()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->y1()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->w1()V

    :goto_0
    return-void
.end method

.method public final W0()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->appEventBus(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->checkAudioPermissionGrated(Landroid/content/Context;Lorg/greenrobot/eventbus/EventBus;)Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "btnRecord"

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->I(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopPlay()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t1(Z)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->updateQuotaBeforeRecord()V

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/data/ToolFunction;->RECORD_AUDIO:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_5

    const-string v1, "click_galaxy_audioRecord_0001"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final X()V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/ToolFunction;->PHOTO:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_camera_0001"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->K()V

    return-void
.end method

.method public final X0(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final Y(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->Companion:Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle$Companion;->getDefaultBundle()Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->notifyIfRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/CounterPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/galaxy/note/settings/data/CounterPreference;->getCounterLastUsedPageOption$default(Lcom/onyx/galaxy/note/settings/data/CounterPreference;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/IntOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/utils/IntOption;->get()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k1(Landroid/view/View;I)V

    return-void
.end method

.method public final Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;-><init>(Lcom/onyx/android/sdk/data/ToolFunction;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final Z()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/ToolFunction;->DOC_SLIDE:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;-><init>(Lcom/onyx/android/sdk/data/ToolFunction;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_DOC_OVERVIEW:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->U0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_OUTLINE:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final Z0()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_AUDIO_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_AUDIO_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestAudioPermissionAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$d;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$d;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final a0()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;

    sget-object v2, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/onyx/galaxy/note/editor/ui/NoteOutlineDialogFragment;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a1(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final b0()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v1

    const-string v2, "getContext(...)"

    if-nez v1, :cond_1

    sget-object v0, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createNoteEncryptionLoginDialog(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t:Lcom/onyx/android/sdk/ui/CommonDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/action/doc/FunctionToolToggleNoteEncryptionAction;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p0, v0}, Lcom/onyx/galaxy/note/editor/action/doc/FunctionToolToggleNoteEncryptionAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final c0()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleExportDoc$1$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleExportDoc$1$1;

    new-instance v4, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleExportDoc$1$2;

    invoke-direct {v4, v0, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleExportDoc$1$2;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static {v2, v3, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$c;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$c;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/exg;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/exg;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_0
    return-void
.end method

.method public final c1()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_3

    const-string v1, "view_galaxy_camera_0001"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const-string v1, "view_galaxy_screenshot_0001"

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const-string v1, "view_galaxy_audioRecord_0001"

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTitleCloud:Landroid/widget/FrameLayout;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "view_galaxy_cloudSync_0001"

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeBeautify:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v1, "ivRealtimeBeautify"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    const-string p0, "view_galaxy_realtimeAdjustment_0001"

    invoke-static {v0, p0, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_2
    const-string p0, "view_galaxy_layer_0001"

    invoke-static {v0, p0, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const-string p0, "view_galaxy_page_add_0001"

    invoke-static {v0, p0, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const-string p0, "view_galaxy_notekbar_0001"

    invoke-static {v0, p0, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    const-string p0, "view_galaxy_writing_mode_0001"

    invoke-static {v0, p0, v2, v3, v2}, Lcom/onyx/galaxy/note/common/extension/StatisticsExtKt;->reportNoteEvent$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final d1(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toLowerCase(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_to_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "writing_mode_state"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const-string v0, "switch_writing_mode"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p2, v0}, [Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsSwitchWritingMode;

    invoke-direct {v1, p1}, Lcom/onyx/android/sdk/event/StatisticsSwitchWritingMode;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    const-string p1, "click_galaxy_writing_mode_0001"

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->a1(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final e0()V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/FullScreenEvent;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final e1()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenHeight()F

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->ensureDockType()Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;->BOTTOM:Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    new-instance v1, Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/editor/event/ChangeDockTypeEvent;-><init>(Lcom/onyx/galaxy/note/editor/view/toolbar/DockType;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final f0(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/ToolFunction;->LAYER:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_layer_0001"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o1(Landroid/view/View;)V

    return-void
.end method

.method public final f1()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->S()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTitleLayer:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v1, "ivTitleLayer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o1(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_NOTE_OVERVIEW:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v3, v1, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z

    move-result v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;->toggleFunctionTool(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)V

    :cond_0
    return-void
.end method

.method public final g1()V
    .locals 5

    sget-object v0, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->INSTANCE:Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget-object v3, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_SCREEN_SHOT_FUNCTION_NAME()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/PermissionRequestConst;->getPERMISSION_SCREEN_SHOT_INTENT_NAME()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2}, Lcom/onyx/galaxy/note/settings/utils/PermissionActionUtils;->requestFloatingWindowPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/onyx/galaxy/note/settings/action/RequestPermissionsAction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/fxg;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/fxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->binding:Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDocManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->m:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-object p0
.end method

.method public final getFunctionToolListener()Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;

    return-object p0
.end method

.method public final getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getEditorContainerRectFunc:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "getEditorContainerRectFunc"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIvTabIndicator()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTabIndicator:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivTabIndicator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    return-object p0
.end method

.method public getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->h:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->shortcutBarBinding:Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "shortcutBarBinding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getToggleSideBarLayoutFunc()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final h0()V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v1, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;

    sget-object v2, Lcom/onyx/android/sdk/data/ToolFunction;->MORE_SETTINGS:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-direct {v1, v2}, Lcom/onyx/android/sdk/event/StatisticsShortcutToolbarEvent;-><init>(Lcom/onyx/android/sdk/data/ToolFunction;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_OTHER_SETTINGS:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->U0(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/editor/data/SlideBarType;->SLIDE_MORE_SETTING:Lcom/onyx/galaxy/note/editor/data/SlideBarType;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final i0()V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleReadingMode$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleReadingMode$1;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->M(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final i1(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->shortcutsEnable(Z)V

    return-void
.end method

.method public final j0()V
    .locals 4

    sget-object v0, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->INSTANCE:Lcom/onyx/galaxy/note/utils/FunctionPermissions;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/FunctionPermissions;->isRealtimeBeautifyEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getRealtimeBeautifyEnabledOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    sget-object p0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/NotifyRealtimeBeautifyModeUpdatedEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/app/NotifyRealtimeBeautifyModeUpdatedEvent;-><init>()V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->postEvent(Ljava/lang/Object;)V

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->realtime_beautify_disabled:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;->REALTIME_CONVERT:Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/CheckBeautifyPermissionEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/InkBeautifyConvertType;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final j1(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeBeautify:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v1, "ivRealtimeBeautify"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/extension/ViewLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/ViewLocator;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/extension/ViewLocator;->getActivity(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/RealtimeBeautifySettingsPopup;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-direct {v1, v0, p1, v3}, Lcom/onyx/galaxy/note/editor/view/popup/RealtimeBeautifySettingsPopup;-><init>(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_REALTIME_BEAUTIFY:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {p0, v0, v3, v4, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z

    move-result p0

    invoke-virtual {v1, p1, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->showTop(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final k0()V
    .locals 3

    invoke-static {}, Lcom/onyx/galaxy/note/utils/NotificationKt;->showWelcomeNotification()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->g1()V

    sget-object v0, Lcom/onyx/android/sdk/data/ToolFunction;->SCREENSHOT:Lcom/onyx/android/sdk/data/ToolFunction;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y0(Lcom/onyx/android/sdk/data/ToolFunction;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "click_galaxy_screenshot_0001"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final k1(Landroid/view/View;I)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->isShowing()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->dismiss()V

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_COUNTER:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z

    move-result v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    invoke-direct {v2, v0, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    iput-object v2, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    sget-object p1, Lcom/onyx/galaxy/note/utils/CounterUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/CounterUtils;

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/utils/CounterUtils;->withPageBundle(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v2, p0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->show(Landroid/graphics/Rect;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public final l0(Landroid/view/View;Landroid/view/View;Lcom/onyx/galaxy/note/editor/data/ShortcutType;)V
    .locals 0

    sget-object p2, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j0()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->e0()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->g0()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b0()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Y(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->h0()V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Z()V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n0()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i0()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->W()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->f0(Landroid/view/View;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->T(Landroid/view/View;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k0()V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X()V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->U()V

    goto :goto_0

    :pswitch_11
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->c0()V

    goto :goto_0

    :pswitch_12
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->a0()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final m0(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "StartRecord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "btnRecord"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->startRecord()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    const-string v0, "QuotaUsedOut"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "QuotaRedLine"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->showQuotaNotEnoughDialog(Landroid/view/View;)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    goto :goto_1

    :cond_4
    const-string v0, "RecordAutoStop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z1()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const-string v0, "getRootView(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->showRecordAutoStopDialog(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    const-string v0, "LoadConfigFail"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->btnRecord:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setIdleStateTag(Landroid/view/View;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final m1(Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "getContext(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showExportDialog$1$1;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showExportDialog$1$1;-><init>()V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;->setListener(Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog$ExportListener;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final n0()V
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleWritingMode$1;->INSTANCE:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$handleWritingMode$1;

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->M(ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final n1(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->m:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;

    invoke-direct {v2, v0, v1, p1}, Lcom/onyx/galaxy/note/editor/view/popup/InsertPagePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    sget-object p1, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_ADD_PAGE:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p0, p1, v3, v0, v1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v2, p0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->showTop(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public final o0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->C1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeBeautify:Lcom/onyx/galaxy/note/editor/view/PalmCollectionFrameLayout;

    const-string v0, "ivRealtimeBeautify"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/axg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/axg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivRealtimeSettings:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivRealtimeSettings"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/lxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/lxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final o1(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->S()V

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    invoke-direct {v1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/view/View;)V

    new-instance p1, Lcom/sunia/HTREnginev2/gxg;

    invoke-direct {p1, p0}, Lcom/sunia/HTREnginev2/gxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    sget-object v0, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_LAYER:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v4, v2, v3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->V0(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/galaxy/note/editor/data/ShortcutType;ZILjava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->showTop(Landroid/graphics/Rect;Z)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->register(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final onAudioInfoBean(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "audioInfoBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->w1()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getPlayerViewModel()Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/viewmodel/PlayerViewModel;->seekTo(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;)V

    :cond_0
    return-void
.end method

.method public final onAudioPermissionGratedEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioPermissionGratedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AudioPermissionGratedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->W0()V

    return-void
.end method

.method public final onAudioShapeBeanEvent(Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->y1()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanEvent;->createAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->J(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;)V

    return-void
.end method

.method public final onChangeTouchModeEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;)V
    .locals 9
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v4

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v1

    if-ne v4, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->saveEditTouchMode$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeTouchModeEvent;->getNewTouchMode()Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->N(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onCheckEditorAutoReLockEvent(Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/CheckEditorAutoReLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Q()V

    return-void
.end method

.method public final onContainerRectChangedEvent(Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ContainerRectChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getNoteEditConfigInfo()Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/data/NoteEditConfigInfo;->getShortcutBarData()Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/onyx/galaxy/note/editor/data/ShortcutType;->SHORTCUT_LAYER:Lcom/onyx/galaxy/note/editor/data/ShortcutType;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/onyx/galaxy/note/editor/data/ShortcutBarData;->isLeftSideShortcut(Lcom/onyx/galaxy/note/editor/data/ShortcutType;Z)Z

    move-result p1

    invoke-virtual {v1, v0, p1}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->updatePosition(Landroid/graphics/Rect;Z)V

    :cond_0
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->updatePosition(Landroid/graphics/Rect;Z)V

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->setVisible(Z)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->setVisible(Z)V

    :cond_3
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getLifecycle()Landroidx/lifecycle/LifecycleRegistry;

    move-result-object v0

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->ensureUnRegister(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->unregister(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getEventBusHolder()Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/eventbus/EventBusHolder;->unRegister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->s:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->cancel(I)V

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->destroy()V

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->R()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t:Lcom/onyx/android/sdk/ui/CommonDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/ui/CommonDialog;->dismiss()V

    :cond_3
    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getTransitionController()Lcom/onyx/galaxy/note/category/view/TransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/TransitionController;->dispose()V

    return-void
.end method

.method public final onDismissCounterSettingEvent(Lcom/onyx/galaxy/note/editor/event/DismissCounterSettingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/DismissCounterSettingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->p:Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/window/CounterSettingWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->c1()V

    return-void
.end method

.method public final onDocumentStateEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DocumentStateEvent;->getDocumentState()Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/DocumentState;->OPENED:Lcom/onyx/android/sdk/universal/editor/config/DocumentState;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Q()V

    return-void
.end method

.method public final onEditNoteEncryptionChangedEvent(Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/EditNoteEncryptionChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->F1()V

    return-void
.end method

.method public final onEditorBundleChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/EditorBundleChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->f1()V

    return-void
.end method

.method public final onFunctionToolPopupDismissEvent(Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupDismissEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->R()V

    return-void
.end method

.method public final onFunctionToolPopupHideEvent(Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/FunctionToolPopupHideEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->setVisible(Z)V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public final onNetworkChange(Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/event/NetworkStatusChangeEvent;->getConnected()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->O()V

    return-void
.end method

.method public final onNoteTabDataChangedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/NoteTabDataChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->f1()V

    return-void
.end method

.method public final onRealtimeBeautifyModeUpdatedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RealtimeBeautifyModeUpdatedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RealtimeBeautifyModeUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->C1()V

    return-void
.end method

.method public final onScreenOnEvent(Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/receiver/ScreenOnEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Q()V

    return-void
.end method

.method public final onShortcutBarChangeEvent(Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShortcutBarChangeEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final onShowCounterSettingEvent(Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivCounter:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v1, "ivCounter"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/event/ShowCounterSettingEvent;->getTargetPage()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->k1(Landroid/view/View;I)V

    return-void
.end method

.method public final onShowLayerPopupEvent(Lcom/onyx/galaxy/note/editor/event/ShowLayerPopupEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/editor/event/ShowLayerPopupEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o:Lcom/onyx/galaxy/note/editor/view/popup/LayerPopup;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move v0, v1

    :cond_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTitleLayer:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivTitleLayer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->o1(Landroid/view/View;)V

    return-void
.end method

.method public final onStartActivateDocumentEvent(Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/StartActivateDocumentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->stopMedia()V

    return-void
.end method

.method public final onSyncNoteProgressChangedEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    :cond_2
    check-cast v1, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;->getDocProgress()Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->D1(Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    return-void
.end method

.method public final q1(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "getContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1, v4}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;Landroid/content/Context;)V

    new-instance v3, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showMoreAudioList$1$1;

    invoke-direct {v3, v0, v1, p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showMoreAudioList$1$1;-><init>(Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->setListener(Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup$ItemChangedListener;)V

    invoke-virtual {v2, p1}, Lcom/onyx/galaxy/note/editor/view/popup/AudioListPopup;->showAsDropDown(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    const-string p1, "click_galaxy_audioRecord_0006"

    const/4 v0, 0x2

    invoke-static {p0, p1, v3, v0, v3}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    return-void
.end method

.method public final r0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->F1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivEncryptionLock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivEncryptionLock"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/cxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/cxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivEncryptionUnlock:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivEncryptionUnlock"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/dxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/dxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final r1(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->dismiss()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    const-string v3, "playLayout"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showMoreFunctionPopup$1$1;

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$showMoreFunctionPopup$1$1;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Landroid/view/View;)V

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;-><init>(Landroid/view/View;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ZLkotlin/jvm/functions/Function2;)V

    iput-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    :cond_3
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p1, :cond_4

    new-instance v0, Lcom/sunia/HTREnginev2/zxg;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/zxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    :cond_4
    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getGetEditorContainerRectFunc()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/ViewExtKt;->isLayoutDirectionRtl(Landroid/view/View;)Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/editor/view/popup/BaseShortcutPopup;->showTop(Landroid/graphics/Rect;Z)V

    :cond_5
    return-void
.end method

.method public final setBinding(Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->binding:Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    return-void
.end method

.method public final setDocManagerBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->m:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    return-void
.end method

.method public final setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->titleLayout:Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/CustomShortcutsContainer;->setEditorBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->I(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-static {p1, p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->register(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->updateToolsIconByScreen()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->F1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->Q()V

    return-void
.end method

.method public final setFunctionToolListener(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;)V
    .locals 0
    .param p1    # Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->j:Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout$FunctionToolListener;

    return-void
.end method

.method public final setGetEditorContainerRectFunc(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getEditorContainerRectFunc:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setShortcutBarBinding(Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->shortcutBarBinding:Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    return-void
.end method

.method public final setToggleSideBarLayoutFunc(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/onyx/galaxy/note/editor/data/SlideBarType;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->i:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final showTabIndicator(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getIvTabIndicator()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    return-void
.end method

.method public final stopMedia()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopPlay()V

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->r:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    return-void
.end method

.method public final t1(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const-string v0, "view_galaxy_audioRecord_0004"

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "click_galaxy_audioRecord_0005"

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->playLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->e1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getNewRecordTip()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;->updateAudioSetItem(ZZ)V

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/byg;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/byg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final toggleTabIndicator()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getIvTabIndicator()Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->isVisible(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->showTabIndicator(Z)V

    return-void
.end method

.method public final u0()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivBack:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivBack"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/hxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/hxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivCamera:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivCamera"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/oxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/oxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivScreenShot:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivScreenShot"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/pxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/pxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAddPage:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivAddPage"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/qxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/qxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTitleLayer:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivTitleLayer"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/rxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/rxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivDocOverviewFull:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivDocOverviewFull"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/sxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/sxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivAdjustPageWhitespace:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivAdjustPageWhitespace"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/txg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/txg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivExportDoc:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivExportDoc"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/uxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/uxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivSlide:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v1, "ivSlide"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->side_layout_click_time_interval:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v2

    new-instance v4, Lcom/sunia/HTREnginev2/vxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/vxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static {v0, v2, v3, v4}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivTitleMore:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v2, "ivTitleMore"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lcom/onyx/galaxy/note/R$integer;->side_layout_click_time_interval:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    new-instance v3, Lcom/sunia/HTREnginev2/xxg;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/xxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivTitleCloud:Landroid/widget/FrameLayout;

    const-string v0, "ivTitleCloud"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/ixg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/ixg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutFunctionToolBinding;->ivCustomShortcut:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivCustomShortcut"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/jxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/jxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivCounter:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivCounter"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/kxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/kxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivNoteOverview:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivNoteOverview"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/mxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/mxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->getShortcutBarBinding()Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCustomShortcutsViewBinding;->ivFullScreen:Lcom/onyx/galaxy/note/editor/view/PalmCollectionImageView;

    const-string v0, "ivFullScreen"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/sunia/HTREnginev2/nxg;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/nxg;-><init>(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;)V

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final updateToolsIconByScreen()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->G1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final v1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->docId(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {v0, p0, p2}, Lcom/onyx/galaxy/note/editor/view/popup/SyncErrorPopup;->updateErrorMsg(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/progress/bean/SyncDocProgress;)V

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_2:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    sub-int/2addr p2, v2

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr p0, v2

    sget v2, Lcom/onyx/android/sdk/device/R$dimen;->dp_1:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sub-int/2addr p0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p0}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public final w1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->z1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->setNewRecord(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t1(Z)V

    const-string v0, "click_galaxy_audioRecord_0003"

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1, v2}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final x1()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->l:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteDocBean()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocBean;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    new-instance v1, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;-><init>(Ljava/util/List;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;->setTriggerSource(I)Lcom/onyx/android/sdk/replicator/event/StartNoteReplicatorEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public final y1()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopPlay()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->t1(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    return-void
.end method

.method public final z1()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->isRecording()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->stopRecord()V

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->r:Landroid/os/CountDownTimer;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/os/CountDownTimer;->cancel()V

    :cond_2
    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getSize(Ljava/util/Collection;)I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v3, v2, :cond_3

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    invoke-direct {v3, v1, v6, v4, v5}, Lcom/onyx/android/sdk/universal/editor/events/note/CreateAudioShapeEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getAudioDataSet()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/data/audio/AudioDataSet;->getAudioInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string v0, "view_galaxy_audioRecord_0003"

    invoke-static {p0, v0, v5, v4, v5}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->b1(Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->A1()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->n:Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/editor/viewmodel/AudioViewModel;->getNewRecordTip()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v6

    :goto_0
    invoke-virtual {v0, v6, v1}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;->updateAudioSetItem(ZZ)V

    :cond_6
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/FunctionToolLayout;->q:Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/popup/ShortcutBarMoreFunctionPopup;->updateAudioSet()V

    :cond_7
    return-void
.end method
