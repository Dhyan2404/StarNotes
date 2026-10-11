.class public final Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseGetLayoutInflater"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;,
        Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,2176:1\n58#2,23:2177\n93#2,3:2200\n256#3,2:2203\n256#3,2:2205\n256#3,2:2211\n256#3,2:2213\n256#3,2:2215\n256#3,2:2217\n256#3,2:2219\n256#3,2:2221\n256#3,2:2223\n256#3,2:2225\n256#3,2:2227\n256#3,2:2229\n256#3,2:2231\n256#3,2:2233\n256#3,2:2235\n256#3,2:2237\n256#3,2:2239\n256#3,2:2241\n256#3,2:2243\n256#3,2:2245\n256#3,2:2247\n256#3,2:2249\n1549#4:2207\n1620#4,3:2208\n1855#4,2:2251\n1864#4,3:2255\n1864#4,3:2258\n215#5,2:2253\n*S KotlinDebug\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n*L\n677#1:2177,23\n677#1:2200,3\n776#1:2203,2\n777#1:2205,2\n1544#1:2211,2\n1558#1:2213,2\n1559#1:2215,2\n1575#1:2217,2\n1576#1:2219,2\n1648#1:2221,2\n1649#1:2223,2\n1650#1:2225,2\n1659#1:2227,2\n1770#1:2229,2\n1771#1:2231,2\n1772#1:2233,2\n1773#1:2235,2\n1799#1:2237,2\n1825#1:2239,2\n1833#1:2241,2\n1844#1:2243,2\n1848#1:2245,2\n1850#1:2247,2\n1855#1:2249,2\n887#1:2207\n887#1:2208,3\n2080#1:2251,2\n2127#1:2255,3\n2160#1:2258,3\n2109#1:2253,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b4\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00ed\u00012\u00020\u0001:\u0002\u00ed\u0001B\t\u00a2\u0006\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0002H\u0002J\u0008\u0010\u0008\u001a\u00020\u0002H\u0002J\u0008\u0010\t\u001a\u00020\u0002H\u0002J\u0008\u0010\n\u001a\u00020\u0002H\u0002J\u0008\u0010\u000b\u001a\u00020\u0002H\u0002J\u0008\u0010\u000c\u001a\u00020\u0002H\u0002J\u0008\u0010\r\u001a\u00020\u0002H\u0002J\u0008\u0010\u000e\u001a\u00020\u0002H\u0002J\u0008\u0010\u000f\u001a\u00020\u0002H\u0002J\u0012\u0010\u0012\u001a\u00020\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002J\u0012\u0010\u0014\u001a\u00020\u00022\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0013H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0002J\u0008\u0010\u0016\u001a\u00020\u0002H\u0002J\u0010\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0017H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0010\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001c\u001a\u00020\u001bH\u0002J\u0008\u0010\u001e\u001a\u00020\u0002H\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0008\u0010 \u001a\u00020\u0002H\u0002J\u0008\u0010!\u001a\u00020\u0002H\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0008\u0010#\u001a\u00020\u0002H\u0002J\u0008\u0010$\u001a\u00020\u0002H\u0002J\u0008\u0010%\u001a\u00020\u0002H\u0002J\u0008\u0010&\u001a\u00020\u0002H\u0003J\u0008\u0010\'\u001a\u00020\u0002H\u0002J\u0008\u0010(\u001a\u00020\u0002H\u0002J\u0010\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0002J\u0008\u0010,\u001a\u00020\u0002H\u0002J\u0008\u0010-\u001a\u00020\u0002H\u0002J\u0008\u0010.\u001a\u00020\u0002H\u0002J\u0008\u0010/\u001a\u00020\u0002H\u0002J\u0008\u00100\u001a\u00020\u0002H\u0002J\u0008\u00101\u001a\u00020\u0002H\u0002J\u0008\u00102\u001a\u00020\u001bH\u0002J\u0008\u00104\u001a\u000203H\u0002J\u0008\u00105\u001a\u00020\u0002H\u0002J\u0008\u00106\u001a\u00020\u0002H\u0002J\n\u00108\u001a\u0004\u0018\u000107H\u0002J\u0008\u00109\u001a\u00020\u0002H\u0002J\u0008\u0010:\u001a\u00020\u0002H\u0002J\u0012\u0010<\u001a\u00020\u00022\u0008\u0010;\u001a\u0004\u0018\u000107H\u0002J\u0012\u0010=\u001a\u00020\u00022\u0008\u0010;\u001a\u0004\u0018\u000107H\u0002J\u0012\u0010?\u001a\u00020\u00022\u0008\u0010>\u001a\u0004\u0018\u000107H\u0002J\u0008\u0010@\u001a\u00020\u0002H\u0002J\u0019\u0010B\u001a\u00020\u00022\u0008\u0010A\u001a\u0004\u0018\u000103H\u0002\u00a2\u0006\u0004\u0008B\u0010CJ\u0008\u0010D\u001a\u00020\u0002H\u0002J\u0008\u0010E\u001a\u00020\u0002H\u0002J\u0008\u0010F\u001a\u00020\u0002H\u0002J\u0008\u0010G\u001a\u00020\u0002H\u0002J\u0008\u0010H\u001a\u00020\u0002H\u0002J\u0010\u0010J\u001a\u00020\u00022\u0006\u0010I\u001a\u00020\u0013H\u0002J\u0008\u0010K\u001a\u00020\u0002H\u0002J\u0008\u0010L\u001a\u00020\u0002H\u0002J\u0008\u0010M\u001a\u00020\u0002H\u0002J\u0019\u0010O\u001a\u00020\u00022\u0008\u0010N\u001a\u0004\u0018\u000103H\u0003\u00a2\u0006\u0004\u0008O\u0010CJ\u0019\u0010P\u001a\u00020\u00022\u0008\u0010N\u001a\u0004\u0018\u000103H\u0003\u00a2\u0006\u0004\u0008P\u0010CJ\u0008\u0010Q\u001a\u00020\u0002H\u0002J\u0008\u0010R\u001a\u00020\u0002H\u0002J\u0008\u0010S\u001a\u00020\u0002H\u0002J\u0008\u0010T\u001a\u00020\u001bH\u0002J\u0008\u0010U\u001a\u00020\u001bH\u0002J\u0012\u0010X\u001a\u00020\u00022\u0008\u0010W\u001a\u0004\u0018\u00010VH\u0002J(\u0010]\u001a\u00020\u00022\u000e\u0010Z\u001a\n\u0012\u0004\u0012\u000203\u0018\u00010Y2\u0006\u0010[\u001a\u0002032\u0006\u0010\\\u001a\u00020\u001bH\u0002J\u0010\u0010`\u001a\u00020\u00022\u0006\u0010_\u001a\u00020^H\u0002J\u0008\u0010a\u001a\u00020\u0002H\u0002J\u0010\u0010d\u001a\u00020\u00022\u0006\u0010c\u001a\u00020bH\u0002J\u0010\u0010f\u001a\u00020\u00022\u0006\u0010e\u001a\u00020\u001bH\u0002J\u0008\u0010g\u001a\u00020\u0002H\u0002J\u0008\u0010h\u001a\u00020\u0002H\u0002J\u0008\u0010i\u001a\u00020\u0002H\u0002J\u0008\u0010j\u001a\u00020\u0002H\u0002J\u0010\u0010l\u001a\u00020\u00022\u0006\u0010k\u001a\u000203H\u0002J\u0016\u0010p\u001a\u00020\u00022\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020n0mH\u0002J\u0016\u0010r\u001a\u00020\u00022\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020n0YH\u0002J\u0016\u0010s\u001a\u00020\u00022\u000c\u0010q\u001a\u0008\u0012\u0004\u0012\u00020n0YH\u0002J#\u0010v\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)2\n\u0008\u0002\u0010u\u001a\u0004\u0018\u000103H\u0002\u00a2\u0006\u0004\u0008v\u0010wJ\u0010\u0010x\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)H\u0002J\u0010\u0010y\u001a\u00020\u00022\u0006\u0010t\u001a\u00020)H\u0002J\u0008\u0010z\u001a\u00020\u0002H\u0002J\u0008\u0010{\u001a\u00020\u001bH\u0002J\u0014\u0010~\u001a\u000e\u0012\u0004\u0012\u00020^\u0012\u0004\u0012\u00020}0|H\u0002J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020^H\u0002J\u0011\u0010\u0081\u0001\u001a\u00020\u00022\u0006\u0010\u007f\u001a\u00020^H\u0002J\t\u0010\u0082\u0001\u001a\u00020\u0002H\u0002J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010\u0083\u0001\u001a\u000203H\u0002J\n\u0010\u0086\u0001\u001a\u00030\u0085\u0001H\u0002J\u0015\u0010\u0089\u0001\u001a\u00020\u00022\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\t\u0010\u008a\u0001\u001a\u00020\u0002H\u0016J+\u0010\u008f\u0001\u001a\u00020\u00172\u0008\u0010\u008c\u0001\u001a\u00030\u008b\u00012\n\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\t\u0010\u0090\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0091\u0001\u001a\u00020\u0002H\u0016J\t\u0010\u0092\u0001\u001a\u00020\u0002H\u0016J\u0013\u0010\u0095\u0001\u001a\u00020\u00022\u0008\u0010\u0094\u0001\u001a\u00030\u0093\u0001H\u0016J\u001e\u0010\u0097\u0001\u001a\u00020\u00022\u0007\u0010\u0096\u0001\u001a\u00020\u00172\n\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016J\u0013\u0010\u009a\u0001\u001a\u00020\u00022\u0008\u0010\u0099\u0001\u001a\u00030\u0098\u0001H\u0007J\u0013\u0010\u009c\u0001\u001a\u00020\u00022\u0008\u0010\u0099\u0001\u001a\u00030\u009b\u0001H\u0007J\u0013\u0010\u009e\u0001\u001a\u00020\u00022\u0008\u0010\u0099\u0001\u001a\u00030\u009d\u0001H\u0007J\u0013\u0010\u00a0\u0001\u001a\u00020\u00022\u0008\u0010\u0099\u0001\u001a\u00030\u009f\u0001H\u0007J\u0013\u0010\u00a2\u0001\u001a\u00020\u00022\u0008\u0010\u0099\u0001\u001a\u00030\u00a1\u0001H\u0007J\'\u0010\u00a7\u0001\u001a\u00020\u00022\u0007\u0010\u00a3\u0001\u001a\u0002032\u0007\u0010\u00a4\u0001\u001a\u0002032\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00a5\u0001H\u0016R\u001a\u0010\u00ab\u0001\u001a\u00030\u00a8\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00a9\u0001\u0010\u00aa\u0001R\u0018\u0010\u00ad\u0001\u001a\u00020\u00048\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008.\u0010\u00ac\u0001R+\u0010\u00b1\u0001\u001a\u000e\u0012\u0004\u0012\u00020^\u0012\u0004\u0012\u00020}0|8BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u00080\u0010\u00ae\u0001\u001a\u0006\u0008\u00af\u0001\u0010\u00b0\u0001R \u0010\u00b5\u0001\u001a\u00030\u00b2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008`\u0010\u00ae\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u00b4\u0001R \u0010\u00b9\u0001\u001a\u00030\u00b6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008/\u0010\u00ae\u0001\u001a\u0006\u0008\u00b7\u0001\u0010\u00b8\u0001R \u0010\u00bd\u0001\u001a\u00030\u00ba\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008d\u0010\u00ae\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00bc\u0001R!\u0010\u00bf\u0001\u001a\u00030\u00b2\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u0081\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00b4\u0001R \u0010\u00c3\u0001\u001a\u00030\u00c0\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008s\u0010\u00ae\u0001\u001a\u0006\u0008\u00c1\u0001\u0010\u00c2\u0001R \u0010\u00c5\u0001\u001a\u00030\u00ba\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008r\u0010\u00ae\u0001\u001a\u0006\u0008\u00c4\u0001\u0010\u00bc\u0001R \u0010\u00c9\u0001\u001a\u00030\u00c6\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008j\u0010\u00ae\u0001\u001a\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001R \u0010\u00cd\u0001\u001a\u00030\u00ca\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u0015\u0010\u00ae\u0001\u001a\u0006\u0008\u00cb\u0001\u0010\u00cc\u0001R!\u0010\u00d2\u0001\u001a\u00030\u00ce\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00cf\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001R \u0010\u00d6\u0001\u001a\u00030\u00d3\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u000f\u0010\u00ae\u0001\u001a\u0006\u0008\u00d4\u0001\u0010\u00d5\u0001R!\u0010\u00db\u0001\u001a\u00030\u00d7\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d8\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00d9\u0001\u0010\u00da\u0001R!\u0010\u00de\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00dc\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u00dd\u0001R!\u0010\u00e1\u0001\u001a\u00030\u0085\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00df\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00e0\u0001\u0010\u00dd\u0001R!\u0010\u00e6\u0001\u001a\u00030\u00e2\u00018FX\u0086\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00e3\u0001\u0010\u00ae\u0001\u001a\u0006\u0008\u00e4\u0001\u0010\u00e5\u0001R\u0018\u0010\u00ea\u0001\u001a\u00030\u00e7\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001\u00a8\u0006\u00ee\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "",
        "W1",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "K2",
        "k2",
        "B2",
        "z2",
        "U0",
        "Y1",
        "V1",
        "T1",
        "j1",
        "X1",
        "L1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;",
        "item",
        "h3",
        "Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;",
        "i3",
        "J1",
        "a2",
        "Landroid/view/View;",
        "anchor",
        "f3",
        "h1",
        "",
        "containsCover",
        "g3",
        "p2",
        "l2",
        "g1",
        "f1",
        "I2",
        "H2",
        "m2",
        "F2",
        "e1",
        "M2",
        "L2",
        "",
        "createNoteName",
        "d1",
        "Y2",
        "W0",
        "A1",
        "D1",
        "B1",
        "X0",
        "J2",
        "",
        "u1",
        "V0",
        "Y0",
        "Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;",
        "k1",
        "C2",
        "N2",
        "templateJsonBean",
        "a3",
        "b3",
        "coverJsonBean",
        "Z2",
        "S1",
        "coverOrientation",
        "b1",
        "(Ljava/lang/Integer;)V",
        "Z1",
        "t3",
        "d3",
        "n3",
        "c3",
        "templateModel",
        "r3",
        "j2",
        "j3",
        "l3",
        "orientation",
        "O2",
        "P2",
        "w3",
        "k3",
        "s3",
        "E2",
        "D2",
        "Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;",
        "spaceArgs",
        "v3",
        "",
        "colorList",
        "selectColorIndex",
        "isCover",
        "m3",
        "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
        "sourceType",
        "C1",
        "x3",
        "Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;",
        "templateDisplayType",
        "E1",
        "isSelectMod",
        "X2",
        "p3",
        "U1",
        "A2",
        "I1",
        "position",
        "W2",
        "",
        "Landroid/net/Uri;",
        "resultList",
        "V2",
        "uriList",
        "H1",
        "G1",
        "eventId",
        "state",
        "T2",
        "(Ljava/lang/String;Ljava/lang/Integer;)V",
        "R2",
        "S2",
        "Q2",
        "e3",
        "",
        "Landroidx/fragment/app/Fragment;",
        "i1",
        "templateSourceType",
        "q3",
        "F1",
        "a1",
        "color",
        "Z0",
        "Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "c1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "onStart",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "onResume",
        "onPause",
        "onDestroyView",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "view",
        "onViewCreated",
        "Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;",
        "event",
        "onImportCustomPaperEvent",
        "Lcom/onyx/galaxy/note/category/event/ImportCustomCoverEvent;",
        "onImportCustomCoverEvent",
        "Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;",
        "onHandleCustomCoverDocumentsEvent",
        "Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;",
        "onHandleCustomPaperDocumentsEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;",
        "onGlobalDocumentOpenSuccessEvent",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "z1",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;",
        "templateViewModel",
        "Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;",
        "templateFragmentArgs",
        "Lkotlin/Lazy;",
        "t1",
        "()Ljava/util/Map;",
        "fragments",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;",
        "s1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;",
        "customPaperHeaderAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;",
        "q1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;",
        "customPaperAdapter",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "r1",
        "()Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "customPaperAdapterHelper",
        "p1",
        "customCoverHeaderAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;",
        "n1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;",
        "customCoverAdapter",
        "o1",
        "customCoverAdapterHelper",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;",
        "w1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;",
        "paperCategoryTitleAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;",
        "m1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;",
        "coverCategoryTitleAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;",
        "K1",
        "x1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;",
        "tagListAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;",
        "v1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;",
        "paperCategoryAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;",
        "M1",
        "l1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;",
        "coverCategoryAdapter",
        "N1",
        "()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;",
        "templatePaperColorAdapter",
        "O1",
        "y1",
        "templateCoverColorAdapter",
        "Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;",
        "P1",
        "getBinding",
        "()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;",
        "binding",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "Q1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "<init>",
        "()V",
        "Companion",
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
        "SMAP\nNoteTemplateFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,2176:1\n58#2,23:2177\n93#2,3:2200\n256#3,2:2203\n256#3,2:2205\n256#3,2:2211\n256#3,2:2213\n256#3,2:2215\n256#3,2:2217\n256#3,2:2219\n256#3,2:2221\n256#3,2:2223\n256#3,2:2225\n256#3,2:2227\n256#3,2:2229\n256#3,2:2231\n256#3,2:2233\n256#3,2:2235\n256#3,2:2237\n256#3,2:2239\n256#3,2:2241\n256#3,2:2243\n256#3,2:2245\n256#3,2:2247\n256#3,2:2249\n1549#4:2207\n1620#4,3:2208\n1855#4,2:2251\n1864#4,3:2255\n1864#4,3:2258\n215#5,2:2253\n*S KotlinDebug\n*F\n+ 1 NoteTemplateFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteTemplateFragment\n*L\n677#1:2177,23\n677#1:2200,3\n776#1:2203,2\n777#1:2205,2\n1544#1:2211,2\n1558#1:2213,2\n1559#1:2215,2\n1575#1:2217,2\n1576#1:2219,2\n1648#1:2221,2\n1649#1:2223,2\n1650#1:2225,2\n1659#1:2227,2\n1770#1:2229,2\n1771#1:2231,2\n1772#1:2233,2\n1773#1:2235,2\n1799#1:2237,2\n1825#1:2239,2\n1833#1:2241,2\n1844#1:2243,2\n1848#1:2245,2\n1850#1:2247,2\n1855#1:2249,2\n887#1:2207\n887#1:2208,3\n2080#1:2251,2\n2127#1:2255,3\n2160#1:2258,3\n2109#1:2253,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "NoteTemplateFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

.field public final B1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final H1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final K1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final L1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final M1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final N1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final P1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Q1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$fragments$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$fragments$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->B1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperHeaderAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperHeaderAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->C1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperAdapterHelper$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customPaperAdapterHelper$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->E1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverHeaderAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverHeaderAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->F1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->G1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$customCoverAdapterHelper$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->H1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$paperCategoryTitleAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$paperCategoryTitleAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->I1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$coverCategoryTitleAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$coverCategoryTitleAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$tagListAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$tagListAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->K1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$paperCategoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$paperCategoryAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->L1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$coverCategoryAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$coverCategoryAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$templatePaperColorAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$templatePaperColorAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->N1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$templateCoverColorAdapter$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$templateCoverColorAdapter$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->O1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->P1:Lkotlin/Lazy;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    return-void
.end method

.method public static synthetic A0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->i2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->R1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic D0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->c2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic E0(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->o2(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic F0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic G0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->O1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final G2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$editTagForNoteContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTagList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectedNoteTagBean()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic H0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->G2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V

    return-void
.end method

.method public static synthetic I0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->P1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic J0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->u2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic K0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final K1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "requireContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {v1, v0, p0}, Lcom/onyx/galaxy/note/category/ui/TemplateSpacePopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAsDropCenter$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic L0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic M0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->d2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static final M1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz p1, :cond_1

    sget p3, Lcom/onyx/galaxy/note/R$id;->cl_thumbnail:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$6$1$anchor$1;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$6$1$anchor$1;-><init>(Landroid/view/View;)V

    invoke-static {p3, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {p3, v0, p1, p0}, Lcom/onyx/galaxy/note/category/ui/PaperEditPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, v4

    move-object v7, p2

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic N0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->u3(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method

.method public static final N1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 7

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view_galaxy_note_add_0003"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S2(Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p3, "templateViewModel"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p3

    check-cast v2, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p3, :cond_1

    const-string p3, "templateFragmentArgs"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v3

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$7$1;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$7$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v5, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$7$2;

    invoke-direct {v5, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$7$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;-><init>(Landroidx/fragment/app/Fragment;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic O0(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y2(Landroid/view/View;)V

    return-void
.end method

.method public static final O1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 8

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "v"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p3, "templateViewModel"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_0
    invoke-virtual {p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, p3

    check-cast v2, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p3, :cond_1

    const-string p3, "templateFragmentArgs"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;-><init>(Landroidx/fragment/app/Fragment;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p2

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showByDockType$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IILandroid/view/View;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic P0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final P1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->isMultiSelectMode()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->h3(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic Q0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->f2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final Q1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz p1, :cond_1

    sget p3, Lcom/onyx/galaxy/note/R$id;->cl_thumbnail:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$4$1$anchor$1;

    invoke-direct {v0, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$4$1$anchor$1;-><init>(Landroid/view/View;)V

    invoke-static {p3, v0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Lcom/onyx/galaxy/note/category/ui/CoverEditPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-direct {p3, v0, p1, p0}, Lcom/onyx/galaxy/note/category/ui/CoverEditPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    sget-object p0, Lcom/onyx/android/sdk/base/extension/PopupLocator;->INSTANCE:Lcom/onyx/android/sdk/base/extension/PopupLocator;

    sget-object v4, Lcom/onyx/android/sdk/base/data/DockPoint;->BOTTOM_CENTER:Lcom/onyx/android/sdk/base/data/DockPoint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x18

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, v4

    move-object v7, p2

    invoke-static/range {v0 .. v9}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->getWindowLocation$default(Lcom/onyx/android/sdk/base/extension/PopupLocator;Landroid/widget/PopupWindow;Landroid/view/View;Lcom/onyx/android/sdk/base/data/DockPoint;Lcom/onyx/android/sdk/base/data/DockPoint;IILandroid/view/View;ILjava/lang/Object;)Lcom/onyx/android/sdk/base/data/WindowLocation;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p2}, Lcom/onyx/android/sdk/base/extension/PopupLocator;->show(Landroid/widget/PopupWindow;Lcom/onyx/android/sdk/base/data/WindowLocation;Landroid/view/View;)Landroid/widget/PopupWindow;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic R0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->e2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final R1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->isMultiSelectMode()Z

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->i3(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic S0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->K1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic T0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T2(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$applyPaperTemplate(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X0()V

    return-void
.end method

.method public static final synthetic access$changeCoverColors(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Z0(I)V

    return-void
.end method

.method public static final synthetic access$changePageTemplateColors(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->a1()V

    return-void
.end method

.method public static final synthetic access$checkOrientationReloadData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->b1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$crateColorViewAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->c1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createNote(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->d1(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$ensureFragments(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->i1()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCoverCategoryAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCoverCategoryTitleAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomCoverAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomCoverHeaderAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->p1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomPaperAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCustomPaperHeaderAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->s1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaperCategoryAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaperCategoryTitleAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTagListAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x1()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTemplateCoverColorAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTemplateFragmentArgs$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    return-object p0
.end method

.method public static final synthetic access$getTemplatePaperColorAdapter(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTemplateViewModel$p(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    return-object p0
.end method

.method public static final synthetic access$handleCustomUi(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->C1(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    return-void
.end method

.method public static final synthetic access$handleTemplateDisplayType(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->E1(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    return-void
.end method

.method public static final synthetic access$initData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->V1()V

    return-void
.end method

.method public static final synthetic access$initListener(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X1()V

    return-void
.end method

.method public static final synthetic access$postApplyStatisticsEvent(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->L2()V

    return-void
.end method

.method public static final synthetic access$reloadCoverData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->O2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$reloadPaperData(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->P2(Ljava/lang/Integer;)V

    return-void
.end method

.method public static final synthetic access$reportCreateNotePageEvent(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S2(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$resetCategoryTitleDisplay(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->W2(I)V

    return-void
.end method

.method public static final synthetic access$resetCustomSelectUi(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    return-void
.end method

.method public static final synthetic access$toggleCustomCoverMultiSelect(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->h3(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    return-void
.end method

.method public static final synthetic access$togglePaperMultiSelect(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->i3(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public static final synthetic access$updateApplyButton(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->j3()V

    return-void
.end method

.method public static final synthetic access$updateArgs(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->k3()V

    return-void
.end method

.method public static final synthetic access$updateCategoryTitle(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l3()V

    return-void
.end method

.method public static final synthetic access$updateCoverPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n3()V

    return-void
.end method

.method public static final synthetic access$updateCustomMultiSelect(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->p3()V

    return-void
.end method

.method public static final synthetic access$updateFragment(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q3(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    return-void
.end method

.method public static final synthetic access$updateGeoLayout(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->r3(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    return-void
.end method

.method public static final synthetic access$updateOrientationByTemplateType(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->s3()V

    return-void
.end method

.method public static final synthetic access$updatePaperPosition(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->t3()V

    return-void
.end method

.method public static final synthetic access$updateTemplateSizeTitle(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w3()V

    return-void
.end method

.method public static final synthetic access$updateTemplateTitle(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x3()V

    return-void
.end method

.method public static final b2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateDisplayType(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n3()V

    :cond_2
    return-void
.end method

.method public static final c2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-eq p1, v2, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateDisplayType(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->t3()V

    :cond_2
    return-void
.end method

.method public static final d2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->setContainsCover(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->g3(Z)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->h1()V

    :cond_2
    return-void
.end method

.method public static final e2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isOfficialTemplateSourceType()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->f3(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public static final f2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isOfficialTemplateSourceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->f3(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static final g2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_note_add_0013"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S2(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object p1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    return-void
.end method

.method public static final h2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_note_add_0012"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S2(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    sget-object p0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    return-void
.end method

.method public static final i2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    :goto_0
    sget-object p0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateSourceType(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    return-void
.end method

.method public static final n2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->F2()V

    return-void
.end method

.method public static final o2(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    const-string p2, "adapter"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final o3(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->c3()V

    return-void
.end method

.method public static final q2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->e1()V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->s2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final r2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->W0()V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->h2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final s2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "click_galaxy_note_add_0010"

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->R2(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->b2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final t2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 p1, 0x0

    const/4 v0, 0x2

    const-string v1, "click_galaxy_docsSetting_changeTemplate_0002"

    invoke-static {p0, v1, p1, v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->U2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->N1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static final u2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    return-void
.end method

.method public static final u3(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->d3()V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->t2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final v2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    return-void
.end method

.method public static synthetic w0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->r2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final w2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_0

    const-string p1, "templateViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->H2()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->I2()V

    :goto_0
    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->g2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V

    return-void
.end method

.method public static final x2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_0

    const-string p1, "templateViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->f1()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->g1()V

    :goto_0
    return-void
.end method

.method public static synthetic y0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M1(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static final y2(Landroid/view/View;)V
    .locals 0

    sget-object p0, Lcom/onyx/galaxy/note/utils/Navigator;->INSTANCE:Lcom/onyx/galaxy/note/utils/Navigator;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/Navigator;->navigateToTemplateMaterialCenter()V

    return-void
.end method

.method public static synthetic z0(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->o3(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    return-void
.end method


# virtual methods
.method public final A1()V
    .locals 11

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->k1()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v0, Lcom/onyx/galaxy/note/R$string;->no_selected_cover_hint:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v8, 0x0

    const-string v9, "templateFragmentArgs"

    if-nez v0, :cond_1

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v8

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;->sameContent(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_2
    new-instance v10, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez v1, :cond_3

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v8, v1

    :goto_0
    invoke-virtual {v8}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getNoteId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v10}, Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M2()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final A2()V
    .locals 9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isChangeType()Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->changeTitleLayout:Lcom/onyx/android/sdk/theme/widgets/TintRelativeLayout;

    invoke-static {v3, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvSelect:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v4, "tvSelect"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v0, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->clTitleContainerBg:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    if-eqz v0, :cond_2

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    :cond_2
    sget v4, Lcom/onyx/galaxy/note/R$drawable;->shape_gradient_note_create_bg:I

    invoke-static {v4}, Lcom/onyx/android/sdk/theme/utils/ThemeUtils;->getThemeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->createTitleDynamicBg:Lcom/onyx/android/sdk/theme/widgets/DynamicImageView;

    const-string v4, "createTitleDynamicBg"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    move v4, v6

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isCreateType()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move v3, v6

    goto :goto_4

    :cond_7
    :goto_3
    move v3, v4

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v8, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->templateCreateLayout:Landroid/widget/LinearLayout;

    invoke-static {v8, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v8, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->llTopContainer:Landroid/widget/FrameLayout;

    invoke-static {v8, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v8, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvCategoryTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-static {v8, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v8, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v8, v8, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->colorDivider:Lcom/onyx/android/sdk/theme/widgets/TintView;

    invoke-static {v8, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    iget-object v3, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivBenchMarkAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v7, "ivBenchMarkAdd"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_8
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_9

    move v7, v6

    goto :goto_5

    :cond_9
    move v7, v5

    :goto_5
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->etNoteName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    const-string v7, "etNoteName"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_a
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_b

    move v7, v6

    goto :goto_6

    :cond_b
    move v7, v5

    :goto_6
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llParamsTagContainer:Landroid/widget/LinearLayout;

    const-string v7, "llParamsTagContainer"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v2

    :cond_c
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_d

    move v7, v6

    goto :goto_7

    :cond_d
    move v7, v5

    :goto_7
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_e
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v3

    if-eqz v3, :cond_f

    sget v3, Lcom/onyx/galaxy/note/R$string;->quickly_note_setting:I

    goto :goto_8

    :cond_f
    sget v3, Lcom/onyx/galaxy/note/R$string;->create_note:I

    :goto_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v7

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v7, v7, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->tvTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvChangeTemplateSizeOrientation:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v7, "tvChangeTemplateSizeOrientation"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_10
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isOfficialTemplateSourceType()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_11

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    move-object v2, p0

    :goto_9
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_a

    :cond_12
    move v4, v6

    :goto_a
    if-eqz v4, :cond_13

    move v5, v6

    :cond_13
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final B1()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Y0()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J2()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X0()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void

    :cond_2
    new-instance v0, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/onyx/galaxy/note/R$string;->hint:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setTitle(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->u1()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setMessage(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setWarning(Z)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->apply:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmText(I)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$handleChangeTemplate$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$handleChangeTemplate$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->setConfirmCallback(Lkotlin/jvm/functions/Function2;)Lcom/onyx/android/sdk/ui/CommonDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog$Builder;->create()Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    :goto_0
    return-void
.end method

.method public final B2()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v2, 0x0

    const-string v3, "templateFragmentArgs"

    if-nez v1, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getFullWindowShow()Z

    move-result v1

    const/4 v4, -0x1

    if-eqz v1, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getWindowDefaultHeight()I

    move-result v5

    sget v6, Lcom/onyx/android/sdk/device/R$dimen;->dp_96:I

    invoke-virtual {v1, v6}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v1

    sub-int/2addr v5, v1

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/view/Window;->setLayout(II)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getFullWindowShow()Z

    move-result p0

    if-nez p0, :cond_4

    const/16 p0, 0x50

    invoke-virtual {v0, p0}, Landroid/view/Window;->setGravity(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final C1(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateRecommend:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v4, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-ne p1, v4, :cond_1

    move v5, v2

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateAdded:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    sget-object v5, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-ne p1, v5, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    const-string v6, "clCategoryTemplate"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    :goto_3
    const/16 v7, 0x8

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, v7

    :goto_4
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    const-string v6, "clCategoryCustomTemplate"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v4, :cond_5

    move v4, v2

    goto :goto_5

    :cond_5
    move v4, v3

    :goto_5
    if-eqz v4, :cond_6

    move v4, v3

    goto :goto_6

    :cond_6
    move v4, v7

    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->flyContent:Landroid/widget/FrameLayout;

    const-string v4, "flyContent"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v5, :cond_7

    move v4, v2

    goto :goto_7

    :cond_7
    move v4, v3

    :goto_7
    if-eqz v4, :cond_8

    move v4, v3

    goto :goto_8

    :cond_8
    move v4, v7

    :goto_8
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    if-ne p1, v1, :cond_9

    move v4, v2

    goto :goto_9

    :cond_9
    move v4, v3

    :goto_9
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llSpaceArgs:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_a

    move v4, v2

    goto :goto_a

    :cond_a
    move v4, v3

    :goto_a
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llColorArgs:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_b

    move v4, v2

    goto :goto_b

    :cond_b
    move v4, v3

    :goto_b
    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivFormatArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    if-ne p1, v1, :cond_c

    move p1, v2

    goto :goto_c

    :cond_c
    move p1, v3

    :goto_c
    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x3()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvGotoMaterialCenter:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    const-string v0, "tvGotoMaterialCenter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v4, "templateViewModel"

    if-nez v0, :cond_d

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_d
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getVisibleMaterialButton()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_e

    move v0, v3

    goto :goto_d

    :cond_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_d
    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_e

    :cond_f
    move-object v1, v0

    :goto_e
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object v0

    if-ne v0, v5, :cond_10

    goto :goto_f

    :cond_10
    move v2, v3

    :goto_f
    if-eqz v2, :cond_11

    move v7, v3

    :cond_11
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvGotoMaterialCenter:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    sget-object p1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result p1

    invoke-virtual {p0, v3, v3, p1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final C2()V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updatePaperModelSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->templateModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->a3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    sget-object v3, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v4, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_4
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getInsertAtPageIndex()Ljava/lang/Integer;

    move-result-object v7

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->paperTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)Landroid/graphics/RectF;

    move-result-object v8

    sget-object v9, Lcom/onyx/android/sdk/data/InsertPageFrom;->MORE_TEMPLATE:Lcom/onyx/android/sdk/data/InsertPageFrom;

    const/4 v10, 0x1

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcom/onyx/galaxy/note/category/event/InsertPageWithTemplateEvent;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/lang/Integer;Landroid/graphics/RectF;Lcom/onyx/android/sdk/data/InsertPageFrom;Z)V

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->N2()V

    return-void
.end method

.method public final D1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->C2()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public final D2()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final E1(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V
    .locals 3

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvPaperType:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvCoverType:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llPaperContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->o1()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvPaperType:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvCoverType:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llPaperContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->r1()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->X2(Z)V

    :goto_0
    return-void
.end method

.method public final E2()Z
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final F1(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->t1()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-ne v3, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_4
    return-void
.end method

.method public final F2()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTagList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;

    const-string v2, "NoteTemplateFragment"

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/sunia/HTREnginev2/v3k;

    invoke-direct {v2, p0, v0}, Lcom/sunia/HTREnginev2/v3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final G1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$j;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$j;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$k;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$k;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBeanList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$l;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$l;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$m;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$m;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final H2()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/category/action/cover/ModifyCustomCoverAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$o;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$o;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$p;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$p;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final I1()V
    .locals 10

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v1

    iget-object v2, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "clCategoryTemplate"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v1, "requireContext(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    sget-object v9, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/android/sdk/device/R$dimen;->dp_24:I

    invoke-virtual {v9, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration$default(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v2, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rlCategoryTitle"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->template_category_divider_width:I

    invoke-virtual {v9, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static/range {v2 .. v8}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->addMaterialItemDecoration$default(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;IIZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategory$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategory$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;->setCategoryTitleChange(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategory$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategory$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;->setCategoryTitleChange(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final I2()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/template/ModifyCustomPaperAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/onyx/galaxy/note/category/action/template/ModifyCustomPaperAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$q;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$q;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$r;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$r;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final J1()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;->setItemClickCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->setItemClickCallback(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCategoryTitleListener$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setColorViewListener(Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter$ColorViewListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llSpaceArgs:Landroid/widget/LinearLayout;

    const-string v0, "llSpaceArgs"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/i3k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/i3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final J2()Z
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final K2()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;
    .locals 3

    sget-object v0, Lcom/onyx/android/sdk/data/utils/JSONUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/JSONUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "args"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/data/utils/JSONUtils;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez v0, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;-><init>()V

    :cond_1
    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    return-object v0
.end method

.method public final L1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverAndPaperListListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->p1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/c3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/d3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/d3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/e3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/e3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/f3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/f3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/g3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->s1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/h3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/h3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    return-void
.end method

.method public final L2()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_3

    new-instance v4, Lcom/onyx/android/sdk/event/StatisticsNoteTempleEvent;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_2
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModelStatisticName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/event/StatisticsNoteTempleEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_5

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteTempleEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModelStatisticName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/event/StatisticsNoteTempleEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final M2()V
    .locals 7

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_3

    new-instance v4, Lcom/onyx/android/sdk/event/StatisticsNoteTemplateChangeEvent;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v1

    :cond_2
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModelStatisticName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSource()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lcom/onyx/android/sdk/event/StatisticsNoteTemplateChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_3
    if-eqz v3, :cond_5

    new-instance v0, Lcom/onyx/android/sdk/event/StatisticsNoteTemplateChangeEvent;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModelStatisticName()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/SourceType;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/common/data/template/SourceType;->getSourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/onyx/android/sdk/event/StatisticsNoteTemplateChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final N2()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getInsertAtPageIndex()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSource()I

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "custom"

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "more_template_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitleResName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v2, Lcom/onyx/android/sdk/event/StatisticsStoolbarPageAdd;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/event/StatisticsStoolbarPageAdd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final O2(Ljava/lang/Integer;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v1, v0, p1, v2}, Lcom/onyx/galaxy/note/category/action/cover/LoadAllOfficialCoverListAction;-><init>(Ljava/util/List;ILcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$u;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$u;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_2
    return-void
.end method

.method public final P2(Ljava/lang/Integer;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v3, Lcom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v4

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-direct {v3, v0, p1, v1, v2}, Lcom/onyx/galaxy/note/category/action/template/LoadAllOfficialPaperListAction;-><init>(Ljava/util/List;IZLcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$v;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$v;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_3
    return-void
.end method

.method public final Q2()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "templateFragmentArgs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "trigger_from"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v3, "templateViewModel"

    if-nez v2, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "note_cover_state"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_4
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_6

    sget-object v2, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_6
    const-string v4, "note_orientation"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_7

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_7
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "note_size"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_8
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    const-string v4, "int2ArgbString(...)"

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "note_cover_color"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_a
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurFillColor()I

    move-result v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/ColorUtils;->int2ArgbString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "note_template_color"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_c

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object p0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceHalfUpDisplayValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "note_template_line"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v1, "click_galaxy_note_add_0011"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final R2(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_0

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "trigger_from"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final S1()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOfficialCoverList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$3;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initCoverObserve$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final S2(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "templateFragmentArgs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-eq p0, v0, :cond_2

    return-void

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "trigger_from"

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    invoke-virtual {v0, p1, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final T1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->switchCover:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v2, 0x0

    const-string v3, "templateViewModel"

    if-nez v1, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getChangeContainsCover()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getChangeContainsCover()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    return-void
.end method

.method public final T2(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_0

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getNoteId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    const-string v1, "note_id"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "note_template_full_change"

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance p2, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;

    invoke-direct {p2, p1, v0}, Lcom/onyx/android/sdk/data/OnyxStatisticEvent;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public final U0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->noteTemplateRoot:Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$addEditTextListener$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$addEditTextListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;->setClickCallback(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final U1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    new-instance v1, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$dimen;->template_custom_divider_width:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->etNoteName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCreateNoteName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final V0()V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->BOUNDLESS:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->clearMargins()V

    :cond_3
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v4, 0x0

    sget-object v3, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_4
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v6, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v6, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v2

    :cond_5
    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->templateModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x19

    const/4 v10, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v3, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    invoke-virtual {v1, v3}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v1, Lcom/onyx/galaxy/note/R$string;->change_paper_succeed:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v0, v1, v3, v4, v2}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "click_galaxy_docsSetting_changeTemplate_0003"

    invoke-virtual {p0, v1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T2(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M2()V

    return-void
.end method

.method public final V1()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateDisplayType(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyPaperChange()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-virtual {v0, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateTemplateDisplayType(Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;)V

    :cond_5
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->e3()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llNoteSettingContainer:Landroid/widget/LinearLayout;

    const-string v4, "llNoteSettingContainer"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setLayoutHeight(Landroid/view/View;Ljava/lang/Number;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llParamsCoverContainer:Landroid/widget/FrameLayout;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->llCustomSwitchContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvPaperType:Lcom/onyx/android/sdk/ui/MediumTextView;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->boundless_note_paper:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadData()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->j1()V

    return-void
.end method

.method public final V2(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow;->Companion:Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow$Companion;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "templateFragmentArgs"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p0

    :goto_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    invoke-virtual {v0, v1, p0}, Lcom/onyx/galaxy/note/category/view/popup/CustomTemplatePopupWindow$Companion;->getTriggerFrom(ILcom/onyx/galaxy/note/category/data/TemplateDisplayType;)I

    move-result p0

    const-string v0, "trigger_from"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "image_amount"

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string v0, "click_galaxy_common_importPicture_0004"

    invoke-virtual {p1, v0, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final W0()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D1()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->B1()V

    :goto_0
    return-void
.end method

.method public final W1()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateFragmentArgs()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$n;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final W2(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlCategoryTitle:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    instance-of v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->setDisplayPosition(I)V

    invoke-virtual {v0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    instance-of v0, p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;->setDisplayPosition(I)V

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public final X0()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_0

    const-string v0, "templateViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->V0()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Y0()V

    :goto_0
    return-void
.end method

.method public final X1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->p2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->a2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->L1()V

    return-void
.end method

.method public final X2(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->p3()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v1, "tvDelete"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvRename"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvDone"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvSelect:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v3, "tvSelect"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p1, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, p1

    :goto_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->setMultiSelectMode(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->setMultiSelectMode(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->setMultiSelectMode(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->setMultiSelectMode(Z)V

    :goto_4
    return-void
.end method

.method public final Y0()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v2, "templateViewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    :goto_0
    sget-object v5, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_3
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->k1()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v6

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_6
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v1, v4, :cond_7

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J2()Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v6, 0x0

    sget-object v5, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v7, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_8
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v8, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v8, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_9
    invoke-virtual {v8}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->templateModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_a
    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    const/4 v14, 0x0

    sget-object v5, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v6, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v6, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v3

    :cond_b
    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v7, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_c
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->templateModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v16

    const/16 v17, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v5}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v20}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_d
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyPaperChange()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Z2(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    :cond_e
    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_f

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_f
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->a3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    :cond_10
    sget-object v5, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v6, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;

    invoke-direct {v6, v1}, Lcom/onyx/galaxy/note/category/event/ApplyTemplateEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    invoke-virtual {v5, v6}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getApplyAllPaper()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->b3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    :cond_11
    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_12
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v5, 0x0

    if-ne v1, v4, :cond_13

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v4, Lcom/onyx/galaxy/note/R$string;->change_cover_succeed:I

    invoke-static {v1, v4, v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_3

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J2()Z

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v4, Lcom/onyx/galaxy/note/R$string;->change_default_paper_template_success:I

    invoke-static {v1, v4, v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    goto :goto_3

    :cond_14
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget v4, Lcom/onyx/galaxy/note/R$string;->change_paper_succeed:I

    invoke-static {v1, v4, v5, v2, v3}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show$default(Lcom/onyx/android/sdk/base/utils/ToastUtils;IZILjava/lang/Object;)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "click_galaxy_docsSetting_changeTemplate_0003"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T2(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M2()V

    return-void
.end method

.method public final Y1()V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->j2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Z1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->e3()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->S1()V

    :cond_0
    return-void
.end method

.method public final Y2()V
    .locals 8

    new-instance v0, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_0

    const-string v1, "templateViewModel"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/action/SaveQuicklyNoteConfigAction;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$w;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$w;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final Z0(I)V
    .locals 7

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setCurResourceIndex(I)V

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-gez v3, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getFillColor()I

    move-result v6

    if-eq v6, v3, :cond_3

    invoke-virtual {v4, v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;->notifyCoverChangeSelectColor()V

    return-void
.end method

.method public final Z1()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperCategoryList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOfficialPaperList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$3;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$4;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initPaperObserve$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final Z2(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getCoverOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final a1()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getResourceList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->getSelectedPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->setCurResourceIndex(I)V

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-gez v5, :cond_2

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_2
    check-cast v6, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getFillColor()I

    move-result v8

    if-ne v8, v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setFillColor(I)V

    sget-object v8, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v9, Lcom/onyx/galaxy/note/R$color;->template_page_default_gray_color:I

    invoke-virtual {v8, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v9

    if-ne v5, v9, :cond_4

    invoke-virtual {v6, v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setColorTransformMode(I)V

    sget v5, Lcom/onyx/android/sdk/replicator/R$color;->color_dynamic_dark_paper_stroke:I

    invoke-virtual {v8, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setStrokeColor(I)V

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/blankj/utilcode/util/ColorUtils;->isLightColor(I)Z

    move-result v5

    const/4 v8, 0x1

    xor-int/2addr v5, v8

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setColorTransformMode(I)V

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getStrokeColor()I

    move-result v5

    invoke-static {v5}, Lcom/blankj/utilcode/util/ColorUtils;->isLightColor(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getColorTransformMode()I

    move-result v5

    if-ne v5, v8, :cond_5

    sget-object v5, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->INSTANCE:Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->getStrokeColor()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/onyx/android/sdk/base/lite/utils/ColorUtils;->invertColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateResourceModel;->setStrokeColor(I)V

    :cond_5
    :goto_1
    move v5, v7

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v1, v3

    :goto_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;->notifyPaperChangeSelectColor()V

    return-void
.end method

.method public final a2()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/j3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llPaperContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/k3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/k3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->switchCover:Lcom/onyx/android/sdk/theme/widgets/TintSwitchCompat;

    new-instance v1, Lcom/sunia/HTREnginev2/l3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/l3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->etNoteName:Lcom/onyx/android/sdk/ui/TouchModeMaxLengthEditText;

    const-string v1, "etNoteName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsListener$$inlined$doAfterTextChanged$1;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsListener$$inlined$doAfterTextChanged$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llOrientationSizeContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sunia/HTREnginev2/n3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/n3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvChangeTemplateSizeOrientation:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/o3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/o3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/p3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/p3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateRecommend:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/q3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/q3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateAdded:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    const-string v0, "tvTemplateAdded"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/r3k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/r3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final a3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_1

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/template/AddRecentUseTemplateAction;-><init>(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final b1(Ljava/lang/Integer;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$checkOrientationReloadData$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$checkOrientationReloadData$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    :cond_3
    return-void
.end method

.method public final b3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V
    .locals 3

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "templateFragmentArgs"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;

    const/4 v2, 0x1

    invoke-static {v1, v0, p0, v2, v0}, Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;->getTemplateOption$default(Lcom/onyx/android/sdk/universal/editor/extension/MMKVNote;Ljava/lang/String;IILjava/lang/Object;)Lcom/onyx/android/sdk/data/utils/JSONObjectOption;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/data/utils/JSONObjectOption;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public final c1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 1

    new-instance p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;-><init>()V

    sget v0, Lcom/onyx/android/sdk/device/R$dimen;->dp_30:I

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->updateContainerWidthDimension(I)V

    return-object p0
.end method

.method public final c3()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;->getSelectPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "clCategoryTemplate"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionIfCompletelyInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->getSelectPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    const-string v1, "clCategoryCustomTemplate"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionIfCompletelyInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_1
    return-void
.end method

.method public final d1(Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v2, "templateViewModel"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTagIdList()Ljava/util/List;

    move-result-object v9

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result v12

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v1, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_3
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_4
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_5

    sget-object v1, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_6
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getFolderId()Ljava/lang/String;

    move-result-object v7

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_7

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_7
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v14, v4

    check-cast v14, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    new-instance v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;

    move-object v4, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3c6a

    const/16 v20, 0x0

    move-object v1, v5

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v20}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;Ljava/util/List;ZILcom/onyx/android/sdk/replicator/note/bean/SizeFormat;Landroid/graphics/RectF;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getSizeFormat()Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_8
    invoke-virtual {v5, v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updatePaperModelSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_9
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_b

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_a
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/onyx/android/sdk/genericshape/GeoLayout;->clearMargins()V

    goto :goto_2

    :cond_b
    sget-object v5, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/settings/data/NoteConfigManager;->getContainsCoverOption()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v5

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->isContainsCover()Z

    move-result v7

    invoke-virtual {v5, v7}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_c
    invoke-virtual {v5, v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateCoverModelSizeFormat(Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;)V

    iget-object v4, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_d

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_d
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isContainsCover()Z

    move-result v4

    if-eqz v4, :cond_f

    sget-object v4, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_e
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v4

    goto :goto_1

    :cond_f
    move-object v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverJsonBean(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    sget-object v4, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v5, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_10

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v3

    :cond_10
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v4, v5}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverTemplateRect(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setCoverRectF(Landroid/graphics/RectF;)V

    :cond_11
    :goto_2
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getPaperBeanList()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    sget-object v5, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object v7, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v7, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v7, v3

    :cond_12
    invoke-virtual {v7}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    iget-object v8, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v8, :cond_13

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v3

    :cond_13
    invoke-virtual {v8}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getGeoLayout()Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->toPaperBean(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;)Lcom/onyx/android/sdk/replicator/note/bean/PaperBean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->firstPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->a3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->getCoverJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Z2(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->firstPaperJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->b3(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)V

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q2()V

    iget-object v0, v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_14

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_14
    move-object v3, v0

    :goto_3
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getType()I

    move-result v0

    if-eqz v0, :cond_16

    if-eq v0, v6, :cond_15

    goto :goto_4

    :cond_15
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setScene(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;->setContainsCover(Z)V

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;

    sget-object v3, Lcom/onyx/android/sdk/data/NoteCreateFrom;->NORMAL_CREATE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_4

    :cond_16
    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v2, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;

    sget-object v3, Lcom/onyx/android/sdk/data/NoteCreateFrom;->NORMAL_CREATE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    invoke-direct {v2, v1, v3}, Lcom/onyx/galaxy/note/category/event/NCreateScribbleNoteEvent;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteCreateInfo;Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public final d3()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-nez v0, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_5
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    :cond_6
    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;->getSelectPosition(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryTemplate:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "clCategoryTemplate"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionIfCompletelyInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->clCategoryCustomTemplate:Lcom/onyx/galaxy/note/category/view/AutoFitRecycleView;

    const-string v1, "clCategoryCustomTemplate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->getSelectPosition()I

    move-result p0

    invoke-static {v0, p0}, Lcom/onyx/android/sdk/extension/RecyclerViewKt;->scrollToPositionIfCompletelyInVisible(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_1
    return-void
.end method

.method public final e1()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "CreateNoteAction, onClick"

    invoke-virtual {v0, v1, v4, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v3, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Y2()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCreateNoteName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->unnamed_note:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v3, v0

    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/docmanager/action/name/NoteNameCreateAction;-><init>(ILjava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$a;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$b;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$b;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$c;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final e3()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final f1()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v3, Lcom/onyx/galaxy/note/category/action/cover/DeleteCustomCoverAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/onyx/galaxy/note/category/action/cover/DeleteCustomCoverAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$d;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$d;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Z)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$e;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$e;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f3(Landroid/view/View;)V
    .locals 7

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/SizeOrientationPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_0

    const-string v2, "templateViewModel"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$showSizeOrientationPopup$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$showSizeOrientationPopup$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/galaxy/note/category/ui/SizeOrientationPopup;-><init>(Landroid/content/Context;Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;Lkotlin/jvm/functions/Function1;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/onyx/galaxy/note/common/view/BasePopupWindow;->showAsDropCenter$default(Lcom/onyx/galaxy/note/common/view/BasePopupWindow;Landroid/view/View;IIIILjava/lang/Object;)V

    return-void
.end method

.method public final g1()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v3, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lcom/onyx/galaxy/note/category/action/template/DeleteCustomTemplateAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$f;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Z)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$g;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$g;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final g3(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->llCoverContainer:Lcom/onyx/android/sdk/theme/widgets/TintConstraintLayout;

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrInvisible(Landroid/view/View;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-eq p1, v2, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->P1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    return-object p0
.end method

.method public final h1()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->updateCoverSelect(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public final h3(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_3
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_5
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->custom_template_select_single:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$integer;->custom_template_select_single:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    if-lt v0, v1, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;->notifySelectChange()V

    return-void
.end method

.method public final i1()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v1, "getFragments(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    instance-of v2, v1, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->MATERIALS:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/ui/MaterialTemplateFragment;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final i3(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "templateViewModel"

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_0
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_3
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_5
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$integer;->custom_template_select_single:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v2, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    :goto_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperMultiSelectList()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$integer;->custom_template_select_single:I

    invoke-virtual {v3, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    if-lt v0, v1, :cond_8

    goto :goto_3

    :cond_8
    move v5, v6

    :goto_3
    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;->notifySelectChange()V

    return-void
.end method

.method public final j1()V
    .locals 13

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/android/sdk/data/R$integer;->sync_timeout:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/action/cover/FetchCoverPaperAction;-><init>()V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$h;->e:Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$h;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->onErrorReturn(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v8, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;

    move-object v2, v8

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$i;-><init>(JJLcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v1, v8}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v8

    const-string p0, "doOnNext(...)"

    invoke-static {v8, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v0

    invoke-static/range {v7 .. v12}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final j2()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$1;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$3;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$4;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTagList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$5;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$5;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v4, v3}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getVisibleMaterialButton()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initParamsObserve$6;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragmentKt$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final j3()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->tvTemplateApply:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p0, v4}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public final k1()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getChangeContainsCover()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getSizeFormat()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    sget-object v4, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->CUSTOM:Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_4
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->setSizeFormat(Ljava/lang/String;)V

    :cond_6
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v2, p0

    :goto_2
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->coverModelToJsonBean(Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;)Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v2

    :cond_8
    return-object v2
.end method

.method public final k2()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez v0, :cond_0

    const-string v0, "templateFragmentArgs"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getFullWindowShow()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/onyx/galaxy/note/R$style;->FullScreenDialogTheme:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/onyx/galaxy/note/R$style;->NormalDialogTheme:I

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    return-void
.end method

.method public final k3()V
    .locals 10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const-string v4, "llSpaceArgs"

    const-string v5, "llColorArgs"

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->isOfficialSource()Z

    move-result v3

    if-ne v3, v7, :cond_2

    move v3, v7

    goto :goto_0

    :cond_2
    move v3, v8

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getFillColorList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_5
    :goto_1
    sget-object v3, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TEMPLATE_PAGE_COLOR_LIST()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v8, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llColorArgs:Landroid/widget/LinearLayout;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    xor-int/2addr v9, v7

    if-eqz v9, :cond_6

    move v9, v8

    goto :goto_2

    :cond_6
    move v9, v6

    :goto_2
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llSpaceArgs:Landroid/widget/LinearLayout;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_7

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_7
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurResourceIndex()I

    move-result v3

    goto :goto_3

    :cond_8
    move v3, v8

    :goto_3
    invoke-virtual {p0, v0, v3, v7}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m3(Ljava/util/List;IZ)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-static {v0, v8}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_9
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_a
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->isOfficialSource()Z

    move-result v3

    if-ne v3, v7, :cond_c

    move v3, v7

    goto :goto_4

    :cond_c
    move v3, v8

    :goto_4
    if-eqz v3, :cond_e

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getFillColorList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_f

    :cond_d
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    :cond_f
    :goto_5
    sget-object v9, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->INSTANCE:Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/settings/data/NoteConfigConst;->getDEFAULT_TEMPLATE_PAGE_COLOR_LIST()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v3, v8, v9}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safelySubList(Ljava/util/List;II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v9

    iget-object v9, v9, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v9, v9, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v9, v9, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llColorArgs:Landroid/widget/LinearLayout;

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_10

    move v5, v8

    goto :goto_6

    :cond_10
    move v5, v6

    :goto_6
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v5

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v5, v5, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llSpaceArgs:Landroid/widget/LinearLayout;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v4

    goto :goto_7

    :cond_11
    move-object v4, v2

    :goto_7
    if-eqz v4, :cond_12

    goto :goto_8

    :cond_12
    move v7, v8

    :goto_8
    if-eqz v7, :cond_13

    move v6, v8

    :cond_13
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_14

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_14
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateResourceWrapper()Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/bean/TemplateResourceWrapper;->getCurResourceIndex()I

    move-result v4

    goto :goto_9

    :cond_15
    move v4, v8

    :goto_9
    invoke-virtual {p0, v3, v4, v8}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m3(Ljava/util/List;IZ)V

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getTemplateArgs()Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateArgs;->getSpaceArgs()Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;

    move-result-object v0

    goto :goto_a

    :cond_16
    move-object v0, v2

    :goto_a
    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->v3(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->E2()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->tvTemplateCreate:Lcom/onyx/android/sdk/ui/MediumTextView;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_b

    :cond_17
    move-object v2, p0

    :goto_b
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isQuicklyType()Z

    move-result p0

    if-eqz p0, :cond_18

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->apply:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_18
    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v1, Lcom/onyx/galaxy/note/R$string;->dialog_create_sub_folder_create:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object p0

    :goto_c
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method

.method public final l1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->M1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverCategoryAdapter;

    return-object p0
.end method

.method public final l2()V
    .locals 5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->templateChangeTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    const-string v1, "templateChangeTabLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D2()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->tvChangeNewPageTemplateTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v1, "tvChangeNewPageTemplateTitle"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D2()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    filled-new-array {v0}, [Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyPaperChange()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    filled-new-array {v0}, [Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    filled-new-array {v0, v3}, [Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->templateChangeTabLayout:Lcom/onyx/android/sdk/theme/widgets/TintTabLayoutView;

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v1, v4

    :goto_3
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getOnlyCoverChange()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    goto :goto_4

    :cond_7
    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    :goto_4
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$initTabLayout$1$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v3, v0, v1, v2}, Lcom/onyx/galaxy/note/common/extension/TabLayoutKt;->addChangeTemplateTabs(Lcom/google/android/material/tabs/TabLayout;Ljava/util/List;Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final l3()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->W2(I)V

    return-void
.end method

.method public final m1()Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->J1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CoverTitleCategoryAdapter;

    return-object p0
.end method

.method public final m2()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivBenchMarkAdd:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    const-string v0, "ivBenchMarkAdd"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/t3k;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/t3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x1()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/u3k;

    invoke-direct {v1}, Lcom/sunia/HTREnginev2/u3k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->setOnItemLongClickListener(Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->clTagContainer:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "clTagContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/material/divider/MaterialDividerItemDecoration;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerColor(I)V

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/android/sdk/device/R$dimen;->dp_6:I

    invoke-virtual {v2, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/divider/MaterialDividerItemDecoration;->setDividerThickness(I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->x1()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public final m3(Ljava/util/List;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->clColorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p3

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p3, p3, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->clColorList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;->setSelectedPosition(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->G1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomCoverAdapter;

    return-object p0
.end method

.method public final n3()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->postDelayObservable(Landroid/view/View;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/s3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/s3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final o1()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->H1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v3, -0x1

    move/from16 v4, p2

    if-ne v4, v3, :cond_4

    const/16 v3, 0x3e9

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3ea

    if-eq v1, v3, :cond_2

    const/16 v3, 0x7d2

    const-string v4, "flatMap(...)"

    if-eq v1, v3, :cond_1

    const/16 v3, 0x7d3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$t;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$t;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v6

    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_1
    sget-object v11, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$s;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$s;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v12

    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->V2(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->G1(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p3 .. p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->V2(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->H1(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->B2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd5

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    const/4 p3, 0x1

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-class p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/base/extension/FragmentKt;->getViewModel(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "templateViewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p3, :cond_1

    const-string p3, "templateFragmentArgs"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p2, p3

    :goto_0
    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->setTemplateFragmentArgs(Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Y1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->W1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    return-void
.end method

.method public final onGlobalDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/GlobalDocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public final onHandleCustomCoverDocumentsEvent(Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;->getFileEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/HandleCustomCoverDocumentsEvent;->getActivityWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/onyx/galaxy/note/R$integer;->file_picker_max_count:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsCoverTemplatePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v4, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean$default(Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/category/action/cover/ImportFilesAsCustomCoverAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public final onHandleCustomPaperDocumentsEvent(Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;)V
    .locals 10
    .param p1    # Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;->getFileEntries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/HandleCustomPaperDocumentsEvent;->getActivityWeakReference()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    sget-object p0, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/onyx/android/sdk/base/extension/UriKt;->getFileName(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/FileExtensionUtils;->isPdfFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsPaperTemplatePopup;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget v3, Lcom/onyx/galaxy/note/R$integer;->file_picker_max_count:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v2

    invoke-direct {p0, v1, p1, v0, v2}, Lcom/onyx/galaxy/note/editor/view/popup/SelectFilePagesAsPaperTemplatePopup;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;I)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    sget-object v4, Lcom/onyx/galaxy/note/category/data/TemplateFileBean;->Companion:Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getFileUri()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;->createTemplateFileBean$default(Lcom/onyx/galaxy/note/category/data/TemplateFileBean$Companion;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/onyx/galaxy/note/category/data/TemplateFileBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v3, p0, p1}, Lcom/onyx/galaxy/note/category/action/template/ImportFilesAsCustomPaperAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    :goto_1
    return-void
.end method

.method public final onImportCustomCoverEvent(Lcom/onyx/galaxy/note/category/event/ImportCustomCoverEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/ImportCustomCoverEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomCoverList()V

    return-void
.end method

.method public final onImportCustomPaperEvent(Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/ImportCustomPaperEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->loadCustomPaperList()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/WindowKt;->hideNavigationBar(Landroid/view/Window;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->B2()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T1()V

    return-void
.end method

.method public final p1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->F1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    return-object p0
.end method

.method public final p2()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->l2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->tvTemplateCreate:Lcom/onyx/android/sdk/ui/MediumTextView;

    const-string v1, "tvTemplateCreate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->create_note_click_time_interval:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getLong(I)J

    move-result-wide v1

    new-instance v3, Lcom/sunia/HTREnginev2/m3k;

    invoke-direct {v3, p0}, Lcom/sunia/HTREnginev2/m3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-static {v0, v1, v2, v3}, Lcom/onyx/android/sdk/extension/ViewKt;->click(Landroid/view/View;JLandroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->tvTemplateApply:Lcom/onyx/android/sdk/ui/MediumTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/w3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/w3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->ivNoteTemplateBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/x3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/x3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->changeTitleContainer:Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/ChangeNoteTemplateTitleContainerBinding;->ivNoteTemplateBack:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/y3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/y3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvSelect:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/z3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/z3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDone:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/a4k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/a4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvRename:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/b4k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvDelete:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    new-instance v1, Lcom/sunia/HTREnginev2/c4k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/c4k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvGotoMaterialCenter:Lcom/onyx/android/sdk/ui/EllipsizingTextView;

    const-string p0, "tvGotoMaterialCenter"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    new-instance v3, Lcom/sunia/HTREnginev2/d4k;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/d4k;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    return-void
.end method

.method public final p3()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_1
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomPaperList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    sget-object v5, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCustomCoverList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v0

    :goto_2
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->CUSTOM:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    move v0, v4

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->llCustomSelectedContainer:Landroid/widget/LinearLayout;

    const-string v5, "llCustomSelectedContainer"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_8

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->E2()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D2()Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_4

    :cond_8
    move v4, v2

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final q1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->D1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomPaperAdapter;

    return-object p0
.end method

.method public final q3(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->F1(Lcom/onyx/galaxy/note/category/data/TemplateSourceType;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->t1()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string v0, "beginTransaction(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/onyx/galaxy/note/R$id;->fly_content:I

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    return-void
.end method

.method public final r1()Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->E1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-object p0
.end method

.method public final r3(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;)V
    .locals 6

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez p0, :cond_0

    const-string p0, "templateViewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->Companion:Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;->loadGeoLayoutFromTemplateModel$default(Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel$Companion;Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;Lcom/onyx/android/sdk/genericshape/GeoLayout;ZILjava/lang/Object;)Lcom/onyx/android/sdk/genericshape/GeoLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->setGeoLayout(Lcom/onyx/android/sdk/genericshape/GeoLayout;)V

    return-void
.end method

.method public final s1()Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->C1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/CustomTemplateAddAdapter;

    return-object p0
.end method

.method public final s3()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isOfficialTemplateSourceType()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->COVER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-ne v0, v3, :cond_10

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_8
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_9
    move-object v0, v2

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_a

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_a
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_b
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_c

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_c
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    :cond_d
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getCoverModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/CoverModel;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_f
    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->O2(Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_11
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_13

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_13
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_14

    return-void

    :cond_14
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_15

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_15
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_16
    move-object v0, v2

    :goto_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_17

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_17
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_18

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_18
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_19

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_19
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_1a
    move-object v3, v2

    :goto_3
    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1b
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getPaperModel()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/TemplateModel;->getOrientation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1c
    invoke-virtual {p0, v2}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->P2(Ljava/lang/Integer;)V

    :cond_1d
    :goto_4
    return-void
.end method

.method public final t1()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/galaxy/note/category/data/TemplateSourceType;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->B1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final t3()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->getRoot()Lcom/onyx/android/sdk/ui/DispatchClickCallbackConstraintLayout;

    move-result-object v0

    const-string v1, "getRoot(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->postDelayObservable(Landroid/view/View;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/b3k;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/b3k;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnComplete(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->Q1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final u1()I
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->applyAll:Lcom/onyx/android/sdk/theme/widgets/TintCheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "templateFragmentArgs"

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getHasPictureOrPDF()Z

    move-result p0

    if-eqz p0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$string;->change_all_other_tips:I

    goto :goto_2

    :cond_1
    sget p0, Lcom/onyx/galaxy/note/R$string;->change_all_tips:I

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez p0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->getPaperTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/ui/data/Templates;->INSTANCE:Lcom/onyx/android/sdk/universal/ui/data/Templates;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/ui/data/Templates;->getTemplateResourceType(Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->INSTANCE:Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/common/data/template/TemplateResourceConstant;->isPictureOrPDF(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/onyx/galaxy/note/R$string;->change_single_other_tips:I

    goto :goto_2

    :cond_4
    sget p0, Lcom/onyx/galaxy/note/R$string;->change_single_tips:I

    :goto_2
    return p0
.end method

.method public final v1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->L1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperCategoryAdapter;

    return-object p0
.end method

.method public final v3(Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvLineSpace:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/common/data/template/SpaceArgs;->loadSpaceHalfUpDisplayValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final w1()Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->I1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/template/PaperTitleCategoryAdapter;

    return-object p0
.end method

.method public final w3()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const-string v1, "templateViewModel"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->boundless_note_paper:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateSourceType;->OFFICIAL:Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    if-eq v0, v3, :cond_3

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->custom:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v3, Lcom/onyx/android/sdk/base/data/Orientation;->PORTRAIT:Lcom/onyx/android/sdk/base/data/Orientation;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/base/data/Orientation;->getValue()I

    move-result v3

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_8

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getOrientation()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->orientation_horizontal:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    :goto_1
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->orientation_vertical:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_9
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSize()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/bean/SizeFormat;->getSizeFormatName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    :cond_a
    const-string v3, ""

    :cond_b
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/onyx/galaxy/note/R$string;->orientation_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "format(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->format:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getStringSafely(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A1:Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    if-nez v4, :cond_c

    const-string v4, "templateFragmentArgs"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v2

    :cond_c
    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isChangeType()Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_d
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->tvOrientationSize:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_e

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_e
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isBoundlessNoteOperation()Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->templateTitleOrientationContainer:Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutTemplateTitleOrientationContainerBinding;->ivFormatArrow:Lcom/onyx/android/sdk/theme/widgets/TintImageView;

    invoke-static {v0, v4}, Lcom/onyx/android/sdk/base/extension/ViewKt;->setViewVisibleOrGone(Landroid/view/View;Z)V

    :cond_f
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->rlChangeOrientationContainer:Landroid/widget/FrameLayout;

    const-string v5, "rlChangeOrientationContainer"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v2

    :cond_10
    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->isOfficialTemplateSourceType()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v5, :cond_11

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    move-object v2, v5

    :goto_4
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateFragmentArgs()Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/TemplateFragmentArgs;->isChangeType()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_5

    :cond_12
    move v1, v4

    :goto_5
    if-eqz v1, :cond_13

    goto :goto_6

    :cond_13
    const/16 v4, 0x8

    :goto_6
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvChangeTemplateSizeOrientation:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final x1()Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->K1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/TagsListAdapter;

    return-object p0
.end method

.method public final x3()V
    .locals 11

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    const/4 v1, 0x0

    const-string v2, "templateViewModel"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;->PAPER:Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->added_paper:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->paper_template:I

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->custom_paper:I

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v0, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_6
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateSourceType()Lcom/onyx/galaxy/note/category/data/TemplateSourceType;

    move-result-object v0

    sget-object v3, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-ne v0, v4, :cond_7

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->added_cover:I

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_8
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->cover_template:I

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/onyx/galaxy/note/R$string;->custom_cover:I

    invoke-virtual {v0, v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v3, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v1

    :cond_a
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    const/4 v4, -0x1

    if-nez v3, :cond_b

    move v3, v4

    goto :goto_1

    :cond_b
    sget-object v7, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v7, v3

    :goto_1
    const-string v7, ""

    if-eq v3, v6, :cond_d

    if-eq v3, v5, :cond_c

    move-object v3, v7

    goto :goto_2

    :cond_c
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/onyx/galaxy/note/R$string;->cover_template:I

    invoke-virtual {v3, v8, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_d
    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/onyx/galaxy/note/R$string;->paper_template:I

    invoke-virtual {v3, v8, v9}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    iget-object v8, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v8, :cond_e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v1

    :cond_e
    invoke-virtual {v8}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-nez v8, :cond_f

    move v8, v4

    goto :goto_3

    :cond_f
    sget-object v9, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    :goto_3
    if-eq v8, v6, :cond_11

    if-eq v8, v5, :cond_10

    move-object v8, v7

    goto :goto_4

    :cond_10
    sget-object v8, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/onyx/galaxy/note/R$string;->custom_cover:I

    invoke-virtual {v8, v9, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_11
    sget-object v8, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v9

    sget v10, Lcom/onyx/galaxy/note/R$string;->custom_paper:I

    invoke-virtual {v8, v9, v10}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    :goto_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v9

    iget-object v9, v9, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateRecommend:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateCustom:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->tvTemplateAdded:Lcom/onyx/android/sdk/theme/widgets/TintTextView;

    iget-object v8, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->z1:Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;

    if-nez v8, :cond_12

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    move-object v1, v8

    :goto_5
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteTemplateViewModel;->getTemplateType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/TemplateDisplayType;

    if-nez v1, :cond_13

    goto :goto_6

    :cond_13
    sget-object v2, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v4, v2, v1

    :goto_6
    if-eq v4, v6, :cond_15

    if-eq v4, v5, :cond_14

    goto :goto_7

    :cond_14
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->added_cover:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_15
    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$string;->added_paper:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->getBinding()Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/DialogNoteTemplateBinding;->titleContainer:Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/CreateNoteTemplateTitleContainerBinding;->categoryContainer:Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/LayoutCategoryTitleContainerBinding;->tvCategoryTitle:Lcom/onyx/android/sdk/ui/MediumTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final y1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->O1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method public final z1()Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->N1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/ColorViewAdapter;

    return-object p0
.end method

.method public final z2()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->A2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->U1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->I1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->m2()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->T1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->U0()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "view_galaxy_docsSetting_changeTemplate_0002"

    invoke-static {p0, v2, v0, v1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->U2(Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)V

    const-string v0, "view_galaxy_note_add_0002"

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteTemplateFragment;->R2(Ljava/lang/String;)V

    return-void
.end method
