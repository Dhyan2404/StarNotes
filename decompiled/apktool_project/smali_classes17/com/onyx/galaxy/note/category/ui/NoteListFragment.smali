.class public final Lcom/onyx/galaxy/note/category/ui/NoteListFragment;
.super Lcom/onyx/galaxy/note/common/base/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;,
        Lcom/onyx/galaxy/note/category/ui/NoteListFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n766#2:1547\n857#2,2:1548\n1549#2:1550\n1620#2,3:1551\n766#2:1554\n857#2,2:1555\n1549#2:1557\n1620#2,3:1558\n1855#2,2:1561\n1549#2:1563\n1620#2,3:1564\n1549#2:1567\n1620#2,3:1568\n1549#2:1571\n1620#2,3:1572\n1549#2:1575\n1620#2,3:1576\n766#2:1579\n857#2,2:1580\n1549#2:1582\n1620#2,3:1583\n766#2:1586\n857#2,2:1587\n1549#2:1589\n1620#2,3:1590\n1855#2:1593\n1603#2,9:1594\n1855#2:1603\n1856#2:1605\n1612#2:1606\n1856#2:1607\n1549#2:1608\n1620#2,3:1609\n1549#2:1612\n1620#2,3:1613\n1549#2:1616\n1620#2,3:1617\n1747#2,3:1620\n1549#2:1623\n1620#2,3:1624\n1549#2:1627\n1620#2,3:1628\n1549#2:1631\n1620#2,3:1632\n1#3:1604\n277#4,2:1635\n256#4,2:1637\n254#4:1639\n256#4,2:1640\n254#4:1642\n256#4,2:1643\n326#4,4:1645\n310#4:1649\n326#4,4:1650\n311#4:1654\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n*L\n411#1:1547\n411#1:1548,2\n412#1:1550\n412#1:1551,3\n566#1:1554\n566#1:1555,2\n566#1:1557\n566#1:1558,3\n752#1:1561,2\n1118#1:1563\n1118#1:1564,3\n1174#1:1567\n1174#1:1568,3\n1196#1:1571\n1196#1:1572,3\n1219#1:1575\n1219#1:1576,3\n1222#1:1579\n1222#1:1580,2\n1223#1:1582\n1223#1:1583,3\n1227#1:1586\n1227#1:1587,2\n1228#1:1589\n1228#1:1590,3\n1231#1:1593\n1232#1:1594,9\n1232#1:1603\n1232#1:1605\n1232#1:1606\n1231#1:1607\n1251#1:1608\n1251#1:1609,3\n1265#1:1612\n1265#1:1613,3\n1274#1:1616\n1274#1:1617,3\n1275#1:1620,3\n1285#1:1623\n1285#1:1624,3\n1320#1:1627\n1320#1:1628,3\n1340#1:1631\n1340#1:1632,3\n1232#1:1604\n1360#1:1635,2\n1500#1:1637,2\n1509#1:1639\n1514#1:1640,2\n1517#1:1642\n1522#1:1643,2\n1527#1:1645,4\n1407#1:1649\n1407#1:1650,4\n1407#1:1654\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c4\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0002\u00e0\u0001\u0018\u0000 \u00f5\u00012\u00020\u0001:\u0002\u00f5\u0001B\t\u00a2\u0006\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0003J6\u0010\u000e\u001a\u00020\u00022\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0007H\u0002J\u0016\u0010\u0015\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00070\tH\u0002J\u0010\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0003J\u0008\u0010\u0019\u001a\u00020\u0002H\u0002J\u0008\u0010\u001a\u001a\u00020\u0002H\u0002J\u0008\u0010\u001b\u001a\u00020\u0002H\u0003J\u0010\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0002J\u0008\u0010\u001f\u001a\u00020\u0002H\u0002J\u0010\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u000cH\u0002J\u0008\u0010\"\u001a\u00020\u0002H\u0002J\u0014\u0010%\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000f0$0#H\u0002J\u0010\u0010(\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&H\u0002J\u0008\u0010)\u001a\u00020\u0002H\u0002J\u0010\u0010,\u001a\u00020\u00022\u0006\u0010+\u001a\u00020*H\u0002J\u0010\u0010/\u001a\u00020\u00022\u0006\u0010.\u001a\u00020-H\u0002J\u0008\u00100\u001a\u00020\u000cH\u0002J\u0018\u00103\u001a\u00020\u00022\u0006\u00101\u001a\u00020&2\u0006\u00102\u001a\u00020\u0016H\u0002J\u0018\u00104\u001a\u00020\u00022\u0006\u00101\u001a\u00020&2\u0006\u00102\u001a\u00020\u0016H\u0002J\u0010\u00106\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00107\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00108\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u00109\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u0010:\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0010\u0010;\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J\u0016\u0010=\u001a\u00020\u00022\u000c\u0010<\u001a\u0008\u0012\u0004\u0012\u00020*0\tH\u0002J\u0010\u0010>\u001a\u00020\u00022\u0006\u0010+\u001a\u00020\u0016H\u0002J\u0010\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020\u0016H\u0002J\u0010\u0010A\u001a\u00020\u00022\u0006\u00105\u001a\u00020*H\u0002J6\u0010F\u001a\u00020\u00022\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020*0\t2\u0006\u0010C\u001a\u00020\u000c2\u0016\u0008\u0002\u0010E\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u0002\u0018\u00010DH\u0002J\u0010\u0010I\u001a\u00020\u00022\u0006\u0010H\u001a\u00020GH\u0002J*\u0010P\u001a\u00020\u00022\u000c\u0010K\u001a\u0008\u0012\u0004\u0012\u00020J0\t2\u0006\u0010M\u001a\u00020L2\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010NH\u0002J\u0016\u0010S\u001a\u00020\u00022\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020Q0\tH\u0002J\u0008\u0010T\u001a\u00020\u0002H\u0002J\u0008\u0010U\u001a\u00020\u0002H\u0002J\u0008\u0010V\u001a\u00020\u0002H\u0002J\u0008\u0010W\u001a\u00020\u0002H\u0002J\u0008\u0010X\u001a\u00020\u0002H\u0002J\u0008\u0010Y\u001a\u00020\u0002H\u0002J\u0008\u0010Z\u001a\u00020\u0002H\u0002J\u0010\u0010\\\u001a\u00020\u00022\u0006\u0010[\u001a\u00020\u000cH\u0002J\u0008\u0010^\u001a\u00020]H\u0002J\u0012\u0010`\u001a\u00020\u00022\u0008\u0008\u0002\u0010_\u001a\u00020\u000cH\u0003J\u0010\u0010b\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u0007H\u0002J\u0008\u0010c\u001a\u00020\u0002H\u0002J\u0008\u0010d\u001a\u00020\u0002H\u0002J\u0008\u0010e\u001a\u00020\u0002H\u0002J\u0008\u0010f\u001a\u00020\u0002H\u0002J\u001e\u0010h\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020Q0\tH\u0002J\u0016\u0010i\u001a\u00020\u00022\u000c\u0010g\u001a\u0008\u0012\u0004\u0012\u00020J0$H\u0002J\u0012\u0010l\u001a\u00020\u00022\u0008\u0010k\u001a\u0004\u0018\u00010jH\u0016J$\u0010q\u001a\u00020&2\u0006\u0010n\u001a\u00020m2\u0008\u0010p\u001a\u0004\u0018\u00010o2\u0008\u0010k\u001a\u0004\u0018\u00010jH\u0016J\u001a\u0010r\u001a\u00020\u00022\u0006\u0010\'\u001a\u00020&2\u0008\u0010k\u001a\u0004\u0018\u00010jH\u0016J\u0008\u0010s\u001a\u00020\u0002H\u0016J\"\u0010w\u001a\u00020\u00022\u0006\u0010t\u001a\u00020\u00072\u0006\u0010u\u001a\u00020\u00072\u0008\u0010v\u001a\u0004\u0018\u00010GH\u0016J\u0010\u0010z\u001a\u00020\u00022\u0006\u0010y\u001a\u00020xH\u0016J\u0010\u0010|\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020{H\u0007J\u0010\u0010~\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020}H\u0007J\u0011\u0010\u0080\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u007fH\u0007J\u0012\u0010\u0082\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0081\u0001H\u0007J\u0012\u0010\u0084\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0083\u0001H\u0007J\u0012\u0010\u0086\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0085\u0001H\u0007J\u0012\u0010\u0088\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0087\u0001H\u0007J\u0012\u0010\u008a\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0089\u0001H\u0007J\u0012\u0010\u008c\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008b\u0001H\u0007J\u0012\u0010\u008e\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008d\u0001H\u0007J\u0012\u0010\u0090\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u008f\u0001H\u0007J\u0012\u0010\u0092\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0091\u0001H\u0007J\u0012\u0010\u0094\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0093\u0001H\u0007J\u0012\u0010\u0096\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0095\u0001H\u0007J\u0012\u0010\u0098\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0097\u0001H\u0007J\u0012\u0010\u009a\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u0099\u0001H\u0007J\u0012\u0010\u009c\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009b\u0001H\u0007J\u0012\u0010\u009e\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009d\u0001H\u0007J\u0012\u0010\u00a0\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u009f\u0001H\u0007J\u0012\u0010\u00a2\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u00a1\u0001H\u0007J\u0012\u0010\u00a4\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u00a3\u0001H\u0007J\u0012\u0010\u00a6\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u00a5\u0001H\u0007J\u0012\u0010\u00a8\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u00a7\u0001H\u0007J\u0012\u0010\u00aa\u0001\u001a\u00020\u00022\u0007\u0010\u001d\u001a\u00030\u00a9\u0001H\u0007R \u0010\u00af\u0001\u001a\u00030\u00ab\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u00086\u0010\u00ac\u0001\u001a\u0006\u0008\u00ad\u0001\u0010\u00ae\u0001R \u0010\u00b3\u0001\u001a\u00030\u00b0\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008>\u0010\u00ac\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00b2\u0001R \u0010\u00b7\u0001\u001a\u00030\u00b4\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u00089\u0010\u00ac\u0001\u001a\u0006\u0008\u00b5\u0001\u0010\u00b6\u0001R \u0010\u00bb\u0001\u001a\u00030\u00b8\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u000e\u0010\u00ac\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00ba\u0001R!\u0010\u00c0\u0001\u001a\u00030\u00bc\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00bd\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00be\u0001\u0010\u00bf\u0001R \u0010\u00c4\u0001\u001a\u00030\u00c1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008S\u0010\u00ac\u0001\u001a\u0006\u0008\u00c2\u0001\u0010\u00c3\u0001R\u0017\u0010\u00c7\u0001\u001a\u00030\u00c5\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008P\u0010\u00c6\u0001R\u0018\u0010\u00cb\u0001\u001a\u00030\u00c8\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R\u0019\u0010\u00cc\u0001\u001a\u00030\u00c8\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008I\u0010\u00ca\u0001R \u0010\u00d0\u0001\u001a\u00030\u00cd\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008F\u0010\u00ac\u0001\u001a\u0006\u0008\u00ce\u0001\u0010\u00cf\u0001R!\u0010\u00d5\u0001\u001a\u00030\u00d1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u0010\n\u0006\u0008\u00d2\u0001\u0010\u00ac\u0001\u001a\u0006\u0008\u00d3\u0001\u0010\u00d4\u0001R \u0010\u00d7\u0001\u001a\u00030\u00d1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008@\u0010\u00ac\u0001\u001a\u0006\u0008\u00d6\u0001\u0010\u00d4\u0001R \u0010\u00d9\u0001\u001a\u00030\u00d1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008\u001e\u0010\u00ac\u0001\u001a\u0006\u0008\u00d8\u0001\u0010\u00d4\u0001R \u0010\u00db\u0001\u001a\u00030\u00d1\u00018BX\u0082\u0084\u0002\u00a2\u0006\u000f\n\u0005\u0008/\u0010\u00ac\u0001\u001a\u0006\u0008\u00da\u0001\u0010\u00d4\u0001R\u0018\u0010\u00dd\u0001\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0018\u0010\u00dc\u0001R\u0018\u0010\u00de\u0001\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008,\u0010\u00dc\u0001R\u0018\u0010\u00df\u0001\u001a\u00020\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u00088\u0010\u00dc\u0001R\u0017\u0010\u00e2\u0001\u001a\u00030\u00e0\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0015\u0010\u00e1\u0001R\u001f\u0010\u00e5\u0001\u001a\t\u0012\u0005\u0012\u00030\u00e3\u00010$8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u001f\u0010\u00e4\u0001R\u001a\u0010\u00e9\u0001\u001a\u00030\u00e6\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00e7\u0001\u0010\u00e8\u0001R\u001f\u0010\u00ec\u0001\u001a\t\u0012\u0004\u0012\u00020J0\u00ea\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0007\n\u0005\u0008!\u0010\u00eb\u0001R\u0018\u0010\u00ee\u0001\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0007\n\u0005\u0008\u0003\u0010\u00ed\u0001R\u001c\u0010\u00f2\u0001\u001a\u0005\u0018\u00010\u00ef\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u00f1\u0001\u00a8\u0006\u00f6\u0001"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/ui/NoteListFragment;",
        "Lcom/onyx/galaxy/note/common/base/BaseFragment;",
        "",
        "y1",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/app/Activity;",
        "activityReference",
        "",
        "triggerFrom",
        "",
        "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
        "files",
        "",
        "needFinish",
        "g1",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "notePageBean",
        "X0",
        "pos",
        "W0",
        "positionList",
        "u1",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "noteListModelBean",
        "r1",
        "C1",
        "M1",
        "E1",
        "",
        "event",
        "p1",
        "v1",
        "isMulSelect",
        "x1",
        "G1",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "P0",
        "Landroid/view/View;",
        "view",
        "J1",
        "L1",
        "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
        "noteModel",
        "s1",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "pageTagModel",
        "q1",
        "F1",
        "v",
        "model",
        "U1",
        "Q1",
        "syncNoteModel",
        "d1",
        "Y0",
        "t1",
        "f1",
        "b1",
        "c1",
        "list",
        "S1",
        "e1",
        "noteModelBean",
        "o1",
        "a1",
        "syncNoteModels",
        "hasEncryption",
        "Lkotlin/Function1;",
        "callback",
        "m1",
        "Landroid/content/Intent;",
        "intent",
        "l1",
        "Landroid/net/Uri;",
        "uris",
        "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "noteCreateFrom",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "importSelectedContext",
        "j1",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "fileEntries",
        "i1",
        "E0",
        "I1",
        "H0",
        "H1",
        "C0",
        "F0",
        "G0",
        "isShowEmptyView",
        "R1",
        "Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;",
        "J0",
        "notifyAllDataChanged",
        "w0",
        "totalWidth",
        "R0",
        "P1",
        "A0",
        "V1",
        "z0",
        "resultList",
        "N1",
        "O1",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "onCreateView",
        "onViewCreated",
        "onDestroyView",
        "requestCode",
        "resultCode",
        "data",
        "onActivityResult",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;",
        "onSyncNoteProgressChangedEvent",
        "Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;",
        "onDocSyncProgressUpdate",
        "Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;",
        "onCreateQuicklyFolderEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateFileImportEvent;",
        "onNCreateFileImportEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreatePictureImportEvent;",
        "onNCreatePictureImportEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateCameraEvent;",
        "onNCreateCameraEvent",
        "Lcom/onyx/galaxy/note/category/event/NCreateScannerEvent;",
        "onNCreateScannerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;",
        "onImportDocumentUrisEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;",
        "onImportImageUrisEvent",
        "Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;",
        "onNoteTitleUpdatedEvent",
        "Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;",
        "onNoteListDragEndEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;",
        "onMultiDeleteEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;",
        "onMultiMoveEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiExportEvent;",
        "onMultiExportEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;",
        "onMultiModifyNoteLockEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;",
        "onMultiCopyEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;",
        "onMultiDustBinDeleteEvent",
        "Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;",
        "onMultiDustBinRestoreEvent",
        "Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;",
        "onToggleSelectAllEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;",
        "onRequestPermissionEvent",
        "Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;",
        "onActiveNoteListAnimateFinishedEvent",
        "Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;",
        "onChangeNoteTemplateEvent",
        "Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;",
        "onDragNotePageEvent",
        "Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;",
        "onAccountConfigurationChanged",
        "Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;",
        "Lkotlin/Lazy;",
        "I0",
        "()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;",
        "binding",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "V0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "viewModel",
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "N0",
        "()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;",
        "noteQuotaViewModel",
        "Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "O0",
        "()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;",
        "notificationViewModel",
        "Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;",
        "h1",
        "K0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;",
        "footerAdapter",
        "Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;",
        "Q0",
        "()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;",
        "pageListAdapter",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "Lcom/chad/library/adapter4/QuickAdapterHelper;",
        "adapterHelper",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "k1",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "compositeDisposable",
        "viewScopeDisposables",
        "Landroidx/recyclerview/widget/GridLayoutManager;",
        "L0",
        "()Landroidx/recyclerview/widget/GridLayoutManager;",
        "gridLayoutManager",
        "Ljava/lang/Runnable;",
        "n1",
        "S0",
        "()Ljava/lang/Runnable;",
        "toggleDisplayRunnable",
        "T0",
        "toggleMulSelectRunnable",
        "M0",
        "hideGoTopRunnable",
        "U0",
        "updateNoteListViewRunnable",
        "Z",
        "scrollTop",
        "scrollBottom",
        "isRvScrolling",
        "com/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1",
        "Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;",
        "onDragListener",
        "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
        "Ljava/util/List;",
        "noteSyncProgessModelList",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "w1",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "noteSelectType",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "Landroidx/activity/result/ActivityResultLauncher;",
        "takePictureLauncher",
        "I",
        "showGoTopRowCount",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "z1",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "noteEncryptionLoginDialog",
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
        "SMAP\nNoteListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,1546:1\n766#2:1547\n857#2,2:1548\n1549#2:1550\n1620#2,3:1551\n766#2:1554\n857#2,2:1555\n1549#2:1557\n1620#2,3:1558\n1855#2,2:1561\n1549#2:1563\n1620#2,3:1564\n1549#2:1567\n1620#2,3:1568\n1549#2:1571\n1620#2,3:1572\n1549#2:1575\n1620#2,3:1576\n766#2:1579\n857#2,2:1580\n1549#2:1582\n1620#2,3:1583\n766#2:1586\n857#2,2:1587\n1549#2:1589\n1620#2,3:1590\n1855#2:1593\n1603#2,9:1594\n1855#2:1603\n1856#2:1605\n1612#2:1606\n1856#2:1607\n1549#2:1608\n1620#2,3:1609\n1549#2:1612\n1620#2,3:1613\n1549#2:1616\n1620#2,3:1617\n1747#2,3:1620\n1549#2:1623\n1620#2,3:1624\n1549#2:1627\n1620#2,3:1628\n1549#2:1631\n1620#2,3:1632\n1#3:1604\n277#4,2:1635\n256#4,2:1637\n254#4:1639\n256#4,2:1640\n254#4:1642\n256#4,2:1643\n326#4,4:1645\n310#4:1649\n326#4,4:1650\n311#4:1654\n*S KotlinDebug\n*F\n+ 1 NoteListFragment.kt\ncom/onyx/galaxy/note/category/ui/NoteListFragment\n*L\n411#1:1547\n411#1:1548,2\n412#1:1550\n412#1:1551,3\n566#1:1554\n566#1:1555,2\n566#1:1557\n566#1:1558,3\n752#1:1561,2\n1118#1:1563\n1118#1:1564,3\n1174#1:1567\n1174#1:1568,3\n1196#1:1571\n1196#1:1572,3\n1219#1:1575\n1219#1:1576,3\n1222#1:1579\n1222#1:1580,2\n1223#1:1582\n1223#1:1583,3\n1227#1:1586\n1227#1:1587,2\n1228#1:1589\n1228#1:1590,3\n1231#1:1593\n1232#1:1594,9\n1232#1:1603\n1232#1:1605\n1232#1:1606\n1231#1:1607\n1251#1:1608\n1251#1:1609,3\n1265#1:1612\n1265#1:1613,3\n1274#1:1616\n1274#1:1617,3\n1275#1:1620,3\n1285#1:1623\n1285#1:1624,3\n1320#1:1627\n1320#1:1628,3\n1340#1:1631\n1340#1:1632,3\n1232#1:1604\n1360#1:1635,2\n1500#1:1637,2\n1509#1:1639\n1514#1:1640,2\n1517#1:1642\n1522#1:1643,2\n1527#1:1645,4\n1407#1:1649\n1407#1:1650,4\n1407#1:1654\n*E\n"
    }
.end annotation


# static fields
.field public static final A1:J = 0x3e8L

.field public static final ARG_PARAM_TYPE:Ljava/lang/String; = "arg_param_type"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final B1:J = 0x2eeL

.field public static final C1:J = 0x32L

.field public static final Companion:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final D1:I = 0x3

.field public static final TAG:Ljava/lang/String; = "NoteListFragment"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final d1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j1:Lcom/chad/library/adapter4/QuickAdapterHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public l1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q1:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public r1:Z

.field public s1:Z

.field public t1:Z

.field public final u1:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public v1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/progress/db/model/SyncProgressModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public w1:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

.field public x1:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public y1:I

.field public z1:Lcom/onyx/android/sdk/ui/CommonDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Companion:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;-><init>()V

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$binding$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->d1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$viewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$viewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->e1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$noteQuotaViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$noteQuotaViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->f1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$notificationViewModel$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$notificationViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->g1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$footerAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$footerAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->h1:Lkotlin/Lazy;

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$pageListAdapter$2;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$pageListAdapter$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->i1:Lkotlin/Lazy;

    new-instance v0, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;-><init>(Lcom/chad/library/adapter4/BaseQuickAdapter;)V

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper$Builder;->build()Lcom/chad/library/adapter4/QuickAdapterHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->l1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$gridLayoutManager$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$gridLayoutManager$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->m1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleDisplayRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleDisplayRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->n1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$toggleMulSelectRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->o1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$hideGoTopRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$hideGoTopRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->p1:Lkotlin/Lazy;

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$updateNoteListViewRunnable$2;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$updateNoteListViewRunnable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->q1:Lkotlin/Lazy;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r1:Z

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->u1:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->v1:Ljava/util/List;

    return-void
.end method

.method public static final A1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->W0(Lcom/onyx/galaxy/note/category/data/NotePageBean;I)V

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->X0(Lcom/onyx/galaxy/note/category/data/NotePageBean;)V

    :cond_1
    return-void
.end method

.method public static final B0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "rv"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v0, v1

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_page_gird_item_height:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eq v3, v4, :cond_0

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_page_linear_item_height:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    :cond_0
    div-int v1, v0, v2

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    :cond_1
    return-void
.end method

.method public static final B1(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 1

    const-string v0, "adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p0, p2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ToastUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ToastUtils;

    sget p2, Lcom/onyx/galaxy/note/R$string;->note_page_drag_hint:I

    invoke-virtual {p0, p2, p1}, Lcom/onyx/android/sdk/base/utils/ToastUtils;->show(IZ)V

    :cond_1
    return p1
.end method

.method public static final D0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final D1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->P1()V

    return-void
.end method

.method public static final K1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "deniedList"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "These permissions are denied: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string p1, "requireActivity(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "first(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/extension/ActivityKt;->shouldShowGuideToPermissionSettings(Landroid/app/Activity;[Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->getNextEvent()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void
.end method

.method public static final T1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Z)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$list"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/NoteExportArgs$Companion;->toNoteExportArgsList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p2, v0, p0, p1}, Lcom/onyx/galaxy/note/editor/view/dialog/NoteExportDialog;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static final Z0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 1

    const-string v0, "$dialog"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static final synthetic access$adjustListView(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w0(Z)V

    return-void
.end method

.method public static final synthetic access$adjustListViewMargin(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->z0()V

    return-void
.end method

.method public static final synthetic access$adjustRowCountInScreen(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->A0()V

    return-void
.end method

.method public static final synthetic access$getAdapterHelper$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/chad/library/adapter4/QuickAdapterHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    return-object p0
.end method

.method public static final synthetic access$getBinding(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getHideGoTopRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->M0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNoteEncryptionLoginDialog$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/android/sdk/ui/CommonDialog;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->z1:Lcom/onyx/android/sdk/ui/CommonDialog;

    return-object p0
.end method

.method public static final synthetic access$getNoteSelectType$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/data/NoteSelectType;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w1:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    return-object p0
.end method

.method public static final synthetic access$getNotificationViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->O0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getObserveList(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->P0()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPageListAdapter(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->s1:Z

    return p0
.end method

.method public static final synthetic access$getScrollTop$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r1:Z

    return p0
.end method

.method public static final synthetic access$getShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    return p0
.end method

.method public static final synthetic access$getTakePictureLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x1:Landroidx/activity/result/ActivityResultLauncher;

    return-object p0
.end method

.method public static final synthetic access$getToggleDisplayRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->S0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getToggleMulSelectRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->T0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUpdateNoteListViewRunnable(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Ljava/lang/Runnable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->U0()Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getViewModel(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleCopyNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Y0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleDeleteNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->a1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleDustBinDelete(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->b1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleDustBinRestore(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->c1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleEditNode(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->d1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleEditTagToNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->e1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$handleExportNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->f1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleFileImport(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/lang/ref/WeakReference;ILjava/util/List;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->g1(Ljava/lang/ref/WeakReference;ILjava/util/List;Z)V

    return-void
.end method

.method public static final synthetic access$handleFileSelectResult(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->i1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleImageTakeResult(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->l1(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic access$handleMoveNote(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->o1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    return-void
.end method

.method public static final synthetic access$handleNoteQuotaViewModelEvent(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->p1(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$handleShowTemplate(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->t1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    return-void
.end method

.method public static final synthetic access$handleSwipeSelect(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->u1(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$handleToggleDisplayType(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->v1()V

    return-void
.end method

.method public static final synthetic access$handleToggleMulSelect(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x1(Z)V

    return-void
.end method

.method public static final synthetic access$isActive(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$loadListData(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->G1()V

    return-void
.end method

.method public static final synthetic access$normalCreate(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->J1(Landroid/view/View;)V

    return-void
.end method

.method public static final synthetic access$quicklyCreate(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L1()V

    return-void
.end method

.method public static final synthetic access$refreshAfterScrollIfDataIsUpdated(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->M1()V

    return-void
.end method

.method public static final synthetic access$reportPickFileEvent(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;ILjava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->N1(ILjava/util/List;)V

    return-void
.end method

.method public static final synthetic access$setRvScrolling$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->t1:Z

    return-void
.end method

.method public static final synthetic access$setScrollBottom$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->s1:Z

    return-void
.end method

.method public static final synthetic access$setScrollTop$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r1:Z

    return-void
.end method

.method public static final synthetic access$setShowGoTopRowCount$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    return-void
.end method

.method public static final synthetic access$setTakePictureLauncher$p(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroidx/activity/result/ActivityResultLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x1:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static final synthetic access$showEmptyViewIfNeed(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->R1(Z)V

    return-void
.end method

.method public static final synthetic access$toggleGoTopVisible(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V1()V

    return-void
.end method

.method public static synthetic h1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/lang/ref/WeakReference;ILjava/util/List;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->g1(Ljava/lang/ref/WeakReference;ILjava/util/List;Z)V

    return-void
.end method

.method public static synthetic k1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic l0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->D1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->B1(Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic n0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-void
.end method

.method public static synthetic n1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->m1(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic o0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->z1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic p0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Z0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static synthetic q0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->A1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic r0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->T1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic s0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->K1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic t0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->B0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    return-void
.end method

.method public static synthetic u0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V

    return-void
.end method

.method public static synthetic v0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->D0(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    return-void
.end method

.method public static final w1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x32

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v2

    const-string v3, "getRoot(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->S0()Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {v2, p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static synthetic x0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w0(Z)V

    return-void
.end method

.method public static final y0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getScreenWidth()F

    move-result v1

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_horizontal_margin:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v2

    const/4 v3, 0x2

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_left_container_width:I

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-float/2addr v1, v0

    :cond_0
    float-to-int v0, v1

    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    const-string v3, "rv"

    if-eq v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v4

    iget-object v4, v4, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_2

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-ne v4, v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->R0(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    if-eq v5, v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanCount(I)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v4

    if-ne v1, v4, :cond_6

    if-ne v2, v0, :cond_6

    return-void

    :cond_6
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->U0()Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_8
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    const-string v0, "pay_load_key_refresh_view"

    const-string v1, "NoteListFragment"

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public static final z1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/chad/library/adapter4/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->W0(Lcom/onyx/galaxy/note/category/data/NotePageBean;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->U1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSelectList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p0

    invoke-virtual {p1, p0, p3}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->updateSelect(ZI)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sunia/HTREnginev2/exj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/exj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final C0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v1

    sget v2, Lcom/onyx/galaxy/note/R$string;->option_copying:I

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->takeLast(I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$b;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$b;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/sunia/HTREnginev2/gxj;

    invoke-direct {v2, v1}, Lcom/sunia/HTREnginev2/gxj;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$c;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final C1()V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->A0()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v1}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/onyx/galaxy/note/category/view/GridDividerItemDecoration;-><init>(IIZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/view/drag/NoteListDragListener;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/category/view/drag/NoteListDragListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    const-string v0, "slGoTop"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/sunia/HTREnginev2/fxj;

    invoke-direct {v4, p0}, Lcom/sunia/HTREnginev2/fxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/extension/ViewKt;->click$default(Landroid/view/View;JLandroid/view/View$OnClickListener;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->vScrollDown:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->u1:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->vScrollUp:Landroid/view/View;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->u1:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onDragListener$1;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$3;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initView$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public final E0()V
    .locals 8

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v7}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findFolders(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/base/data/TreeNode;->getId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v4, "requireActivity(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$1;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$1;

    new-instance v4, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;

    invoke-direct {v4, p0, v3, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$deleteNote$disposable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, v2, v4}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$d;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final E1()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->P0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$2;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$3;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$4;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$4;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isLoadingList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$5;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$5;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTagRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$6;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$6;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$7;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$7;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$8;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$8;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$9;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$9;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$10;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$10;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$a0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->N0()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->getEvent()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    const-string v2, "getViewLifecycleOwner(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$11;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initViewModel$11;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/DataBindingKt;->observeOnce(Landroidx/lifecycle/MutableLiveData;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function1;)V

    sget-object v3, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$s;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$s;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$t;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$t;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$u;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$u;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$v;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v4

    const-string v0, "doOnNext(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->l1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final F0()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$e;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final F1()Z
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w1:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-nez v1, :cond_0

    const-string v1, "noteSelectType"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isFilterRootFolder()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final G0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$f;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$f;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    const-string v1, "subscribe(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final G1()V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final H0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    new-instance v0, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/event/ResetMultiOptionMenuEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->postEvent(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->S1(Ljava/util/List;)V

    return-void
.end method

.method public final H1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->hasEncryption()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_3
    :goto_1
    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$modifySelectedNotesLock$1;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$modifySelectedNotesLock$1;

    invoke-virtual {p0, v1, v2, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->m1(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->d1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    return-object p0
.end method

.method public final I1()V
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

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

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOldParentId(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOpNoteIds(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setMoveNoteList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    const-string v3, "NoteListFragment"

    invoke-direct {v2, v0, v3}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$w;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$w;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final J0()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getNOTE_DEFAULT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getDUSTBIN_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getTAG_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getTAG_ROOT_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->Companion:Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView$Companion;->getFOLDER_EMPTY_BEAN()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final J1(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$normalCreate$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelf(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final K0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->h1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;

    return-object p0
.end method

.method public final L0()Landroidx/recyclerview/widget/GridLayoutManager;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->m1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/GridLayoutManager;

    return-object p0
.end method

.method public final L1()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->N0()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;->checkGuideRegister(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrentFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getCurrentTagId()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/galaxy/note/category/action/CreateQuicklyNoteAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$z;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$z;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final M0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->p1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final M1()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->v1:Ljava/util/List;

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->handleSyncNoteProgressChangedEvent(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public final N0()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->f1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    return-object p0
.end method

.method public final N1(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;)V"
        }
    .end annotation

    const-string p0, "trigger_from"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "document_amount"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    const-string p2, "click_galaxy_common_importFile_0004"

    invoke-virtual {p1, p2, p0}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final O0()Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->g1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/message/viewmodel/NotificationViewModel;

    return-object p0
.end method

.method public final O1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    const/16 p0, 0xbb9

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "trigger_from"

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

.method public final P0()Landroidx/lifecycle/MutableLiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w1:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-nez v0, :cond_0

    const-string v0, "noteSelectType"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTabAllListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTabPdfListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getTabNoteListData()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final P1()V
    .locals 6

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    div-int/2addr v0, v1

    iget v2, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    mul-int/lit8 v3, v2, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    if-eqz v0, :cond_1

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAdapter()Landroidx/recyclerview/widget/ConcatAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ConcatAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p0

    neg-int p0, p0

    invoke-virtual {v0, v5, p0}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    neg-int v0, v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->list_go_top_animate_duration:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {p0, v5, v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    return-void
.end method

.method public final Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->i1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    return-object p0
.end method

.method public final Q1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showDustBinOpPopup$1;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showDustBinOpPopup$1;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showDustBinOpPopup$2;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showDustBinOpPopup$2;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/onyx/galaxy/note/category/ui/NoteListDustBinOpPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v1, "getRoot(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2, p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final R0(I)I
    .locals 5

    sget-object p0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v0, Lcom/onyx/galaxy/note/R$dimen;->note_page_gird_item_max_width:I

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v0

    sget v1, Lcom/onyx/galaxy/note/R$dimen;->note_grid_divider_min_width:I

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result p0

    int-to-float p1, p1

    div-float v1, p1, v0

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    :goto_0
    int-to-float v3, v1

    mul-float/2addr v3, v0

    sub-float v3, p1, v3

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, p0

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final R1(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->includeEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->J0()Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/category/view/CommonEmptyView;->setEmptyBean(Lcom/onyx/galaxy/note/category/view/CommonEmptyView$EmptyBean;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->includeEmptyView:Lcom/onyx/galaxy/note/category/view/CommonEmptyView;

    const-string v0, "includeEmptyView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final S0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->n1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final S1(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "requireActivity(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-direct {v1, v0, v2}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/lxj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/lxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->doOnNextIfTrue(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final T0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->o1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final U0()Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->q1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public final U1(Landroid/view/View;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 4

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$showNoteOpPopup$noteOperateListener$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/galaxy/note/category/ui/NoteListOpPopup$NoteOperateListener;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p2

    const-string v0, "getRoot(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->windowVisibleRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getDisplayType()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v1, p1, p2, p0}, Lcom/onyx/android/sdk/ui/BasePopWindow;->showCenterPositionPopView(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/Boolean;)V

    return-void
.end method

.method public final V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->e1:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    return-object p0
.end method

.method public final V1()V
    .locals 8

    iget v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    const/16 v1, 0x8

    const-string v2, "slGoTop"

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->L0()Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v3

    div-int/2addr v0, v3

    iget v3, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v3, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_0
    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_1

    :cond_2
    move v6, v5

    :goto_1
    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/view/ViewGroup;

    new-instance v7, Lcom/google/android/material/transition/MaterialFade;

    invoke-direct {v7}, Lcom/google/android/material/transition/MaterialFade;-><init>()V

    invoke-static {v6, v7}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v6

    iget-object v6, v6, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lcom/google/android/material/transition/MaterialFade;

    invoke-direct {v3}, Lcom/google/android/material/transition/MaterialFade;-><init>()V

    invoke-static {v0, v3}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->slGoTop:Lcom/onyx/galaxy/note/ui/view/ShadowLayout;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final W0(Lcom/onyx/galaxy/note/category/data/NotePageBean;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFilterInfo()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->r1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->s1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->toggleSelectList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->updateSelect(ZI)V

    :cond_3
    return-void
.end method

.method public final X0(Lcom/onyx/galaxy/note/category/data/NotePageBean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->isMulSelect()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getPageModelBean()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->q1(Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    return-void
.end method

.method public final Y0(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onyx/galaxy/note/common/extension/ContextExtKt;->createLoadingDialog(Landroid/content/Context;)Lcom/onyx/galaxy/note/common/view/LoadingDialog;

    move-result-object v0

    sget v2, Lcom/onyx/galaxy/note/R$string;->option_copying:I

    invoke-virtual {v0, v2}, Lcom/onyx/galaxy/note/common/view/LoadingDialog;->updateTitle(I)V

    new-instance v2, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v3, v1, p1}, Lcom/onyx/galaxy/note/category/action/CopyNoteListAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$g;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$g;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/bxj;

    invoke-direct {v1, v0}, Lcom/sunia/HTREnginev2/bxj;-><init>(Lcom/onyx/galaxy/note/common/view/LoadingDialog;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$h;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$h;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final a1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 5

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    const-string v1, "subscribe(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    const-string v4, "requireActivity(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lcom/onyx/galaxy/note/category/action/AuthNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$handleDeleteNote$disposable$1;->INSTANCE:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$handleDeleteNote$disposable$1;

    new-instance v3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$handleDeleteNote$disposable$2;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$handleDeleteNote$disposable$2;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;)V

    invoke-static {p1, v2, v3}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildrenNodes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "requireContext(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v3, v0, v2}, Lcom/onyx/galaxy/note/category/action/DeleteFolderAction;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :goto_2
    return-void
.end method

.method public final b1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/settings/action/DeleteDustbinNoteAction;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$i;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$i;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final c1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/settings/action/RestoreDustbinNoteAction;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$j;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$j;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final d1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v0

    const-string v1, "requireContext(...)"

    if-eqz v0, :cond_0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p1}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/action/EditListNoteAction;->create()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$k;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$k;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getFolderRootNode()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "NoteListFragment"

    invoke-direct {v0, p0, p1, v1}, Lcom/onyx/galaxy/note/category/view/dialog/EditFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public final e1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    new-instance v0, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->getSelectTagIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTagIdList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;->setNoteModelBean(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    new-instance p1, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;

    const-string v1, "NoteListFragment"

    invoke-direct {p1, v0, v1}, Lcom/onyx/galaxy/note/category/action/EditTagForNoteAction;-><init>(Lcom/onyx/galaxy/note/common/data/EditTagForNoteContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "requireContext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final f1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->S1(Ljava/util/List;)V

    return-void
.end method

.method public final g1(Ljava/lang/ref/WeakReference;ILjava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/filepicker/DocumentBean;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance v2, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;

    sget-object v3, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lcom/onyx/galaxy/note/category/action/import/CheckPdfPasswordAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p3

    invoke-virtual {p3}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$l;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$l;

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p3

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$m;

    invoke-direct {v0, p0, p2}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$m;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;I)V

    invoke-virtual {p3, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance p3, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$n;

    invoke-direct {p3, p4, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$n;-><init>(ZLjava/lang/ref/WeakReference;)V

    invoke-virtual {p2, p3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$o;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$o;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "doOnNext(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final i1(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->convertDocumentsOnline$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V

    return-void
.end method

.method public final j1(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importImages(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public final l1(Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    const-class v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "take picture uri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_CAMERA:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v9}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V

    return-void
.end method

.method public final m1(Ljava/util/List;ZLkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->isAlreadyLogin()Z

    move-result v0

    const-string v1, "requireActivity(...)"

    if-nez v0, :cond_2

    sget-object p1, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->INSTANCE:Lcom/onyx/galaxy/note/utils/NoteLockUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/utils/NoteLockUtils;->createNoteEncryptionLoginDialog(Landroid/content/Context;)Lcom/onyx/android/sdk/ui/CommonDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->z1:Lcom/onyx/android/sdk/ui/CommonDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/ui/CommonDialog;->show()V

    :cond_0
    if-eqz p3, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/onyx/galaxy/note/category/action/ToggleNoteLockAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v2, v0, p2}, Lcom/onyx/galaxy/note/category/action/ToggleNoteLockAction;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$p;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$p;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string p2, "subscribe(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final o1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getParentUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOldParentId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setOpNoteIds(Ljava/util/List;)V

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/data/ManageFolderContext;->setMoveNoteList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;

    const-string v2, "NoteListFragment"

    invoke-direct {v0, v1, v2}, Lcom/onyx/galaxy/note/category/action/MoveToSelectFolderAction;-><init>(Lcom/onyx/galaxy/note/common/data/ManageFolderContext;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "requireContext(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/common/base/RxBaseNoteAppAction;->setActivityContext(Landroid/content/Context;)Lcom/onyx/android/sdk/base/rx/RxBaseAction;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final onAccountConfigurationChanged(Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/event/AccountConfigurationChanged;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_0
    return-void
.end method

.method public final onActiveNoteListAnimateFinishedEvent(Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/ActiveNoteListAnimateFinishedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x0(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;ZILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->A0()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/16 p2, 0x3ec

    if-eq p1, p2, :cond_1

    const/16 p2, 0x7d4

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->INSTANCE:Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;

    new-instance p1, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;

    invoke-direct {p1, p3}, Lcom/onyx/galaxy/note/editor/action/importfiles/ObtainDocumentListAction;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance p2, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$x;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$x;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    const-string p0, "doOnNext(...)"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;->subscribeWithErrorHandler$default(Lcom/onyx/android/sdk/data/common/error/OnyxErrorHandler;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lcom/onyx/android/sdk/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v7}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->O1(Ljava/util/List;)V

    sget-object v8, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_PICTURE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onChangeNoteTemplateEvent(Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;->getApplyTemplateInfo()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;->getCoverTemplateJsonBean()Lcom/onyx/android/sdk/data/common/data/TemplateJsonBean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;->getNoteId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/ChangeNoteTemplateEvent;->getApplyTemplateInfo()Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/onyx/galaxy/note/category/action/ChangeNoteTemplateAction;-><init>(Ljava/lang/String;Lcom/onyx/android/sdk/replicator/note/bean/ApplyTemplateInfo;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$y;->e:Lcom/onyx/galaxy/note/category/ui/NoteListFragment$y;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onConfigurationChanged$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    const-wide/16 v1, 0x64

    invoke-static {p1, v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/ViewKt;->postSelfDelayed(Landroid/view/View;Lkotlin/jvm/functions/Function1;J)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const v1, -0x54ffffd7

    const v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const v3, 0x0

    check-cast p1, Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {v1, p0, v0}, Lcom/sagittarius/v6/AB;->v(ILjava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onCreateQuicklyFolderEvent(Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateNoteFolderEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubFolderDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->findFolder(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    sget-object v1, Lcom/onyx/android/sdk/data/FolderCreateFrom;->HOME_LIST_ITEM_HEADER_CREATE:Lcom/onyx/android/sdk/data/FolderCreateFrom;

    invoke-direct {p1, v0, p0, v1}, Lcom/onyx/galaxy/note/category/view/dialog/CreateSubFolderDialog;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/base/data/TreeNode;Lcom/onyx/android/sdk/data/FolderCreateFrom;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

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

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->setViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->l1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->dispose()V

    invoke-super {p0}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public final onDocSyncProgressUpdate(Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncProgressUpdateEvent;->getList()Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressListBean;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getSyncStatus()Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/bean/KSyncStatus;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/bean/DocProgressBean;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->onDocSyncSuccess(Ljava/util/List;)V

    return-void
.end method

.method public final onDragNotePageEvent(Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;->getOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;->getTargetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/event/DragNotePageEvent;->getDragState()I

    move-result p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->w1:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-nez p0, :cond_0

    const-string p0, "noteSelectType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->customSortNoteList(Ljava/lang/String;Ljava/lang/String;ILcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    :cond_1
    return-void
.end method

.method public final onImportDocumentUrisEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getUriList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportDocumentUrisEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public final onImportImageUrisEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;->getUriList()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/data/NoteCreateFrom;->IMPORT_FILE:Lcom/onyx/android/sdk/data/NoteCreateFrom;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ImportImageUrisEvent;->getImportSelectedContext()Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public final onMultiCopyEvent(Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiCopyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->C0()V

    return-void
.end method

.method public final onMultiDeleteEvent(Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->E0()V

    return-void
.end method

.method public final onMultiDustBinDeleteEvent(Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiDustBinDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F0()V

    return-void
.end method

.method public final onMultiDustBinRestoreEvent(Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiDustBinRestoreEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->G0()V

    return-void
.end method

.method public final onMultiExportEvent(Lcom/onyx/galaxy/note/category/event/MultiExportEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiExportEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->H0()V

    return-void
.end method

.method public final onMultiModifyNoteLockEvent(Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiModifyNoteLockEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->H1()V

    return-void
.end method

.method public final onMultiMoveEvent(Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/MultiMoveEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I1()V

    return-void
.end method

.method public final onNCreateCameraEvent(Lcom/onyx/galaxy/note/category/event/NCreateCameraEvent;)V
    .locals 6
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateCameraEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->x1:Landroidx/activity/result/ActivityResultLauncher;

    if-nez v0, :cond_1

    const-string v0, "takePictureLauncher"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/common/action/TakePhotoAction;-><init>(Landroidx/fragment/app/Fragment;Landroidx/activity/result/ActivityResultLauncher;Ljava/io/File;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x7

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onNCreateFileImportEvent(Lcom/onyx/galaxy/note/category/event/NCreateFileImportEvent;)V
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateFileImportEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->Companion:Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder$Companion;->getInstance()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/galaxy/note/utils/FilePickerExtKt;->setCommonConfig(Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$string;->import_file:I

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setTitle(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->ofDoc()Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->multiEnable(Z)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$integer;->file_picker_max_count:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->setMaxSelectCount(I)Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onNCreateFileImportEvent$1;

    invoke-direct {v1, p0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$onNCreateFileImportEvent$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/galaxy/note/category/event/NCreateFileImportEvent;)V

    const/4 p1, 0x0

    const/16 v2, 0x7d4

    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/onyx/android/sdk/filepicker/FilePickerBuilder;->pickFile(Landroidx/fragment/app/Fragment;ZILkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final onNCreatePictureImportEvent(Lcom/onyx/galaxy/note/category/event/NCreatePictureImportEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreatePictureImportEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/matisse/Matisse;->from(Landroidx/fragment/app/Fragment;)Lcom/onyx/android/sdk/matisse/Matisse;

    move-result-object p0

    const-string p1, "from(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/galaxy/note/common/extension/MatisseKt;->buildSelectionCreator(Lcom/onyx/android/sdk/matisse/Matisse;)Lcom/onyx/android/sdk/matisse/SelectionCreator;

    move-result-object p0

    const/16 p1, 0x3ec

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public final onNCreateScannerEvent(Lcom/onyx/galaxy/note/category/event/NCreateScannerEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NCreateScannerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    return-void
.end method

.method public final onNoteListDragEndEvent(Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteListDragEndEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->resetDragView()V

    return-void
.end method

.method public final onNoteTitleUpdatedEvent(Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->handleTitleUpdated(Lcom/onyx/galaxy/note/category/event/NoteTitleUpdatedEvent;)V

    return-void
.end method

.method public final onRequestPermissionEvent(Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/permissionx/guolindev/PermissionX;->init(Landroidx/fragment/app/Fragment;)Lcom/permissionx/guolindev/PermissionMediator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;->getPermissionList()Ljava/util/LinkedHashSet;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/PermissionMediator;->permissions(Ljava/util/List;)Lcom/permissionx/guolindev/request/PermissionBuilder;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/cxj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/cxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Lcom/onyx/android/sdk/universal/editor/events/app/RequestPermissionEvent;)V

    invoke-virtual {v0, v1}, Lcom/permissionx/guolindev/request/PermissionBuilder;->request(Lcom/permissionx/guolindev/callback/RequestCallback;)V

    return-void
.end method

.method public final onSyncNoteProgressChangedEvent(Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->t1:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->handleSyncNoteProgressChangedEvent(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->v1:Ljava/util/List;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/event/SyncNoteProgressChangedEvent;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final onToggleSelectAllEvent(Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;)V
    .locals 5
    .param p1    # Lcom/onyx/galaxy/note/category/event/ToggleSelectAllEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->P0()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v4}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteDoc()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/4 p1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    move p1, v0

    :goto_2
    const-string v1, "pay_load_key_selected"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItemCount()I

    move-result p0

    invoke-virtual {v1, v0, p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

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

    invoke-super {p0, p1, p2}, Lcom/onyx/galaxy/note/common/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->l1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->y1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->C1()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->E1()V

    return-void
.end method

.method public final p1(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "QuotaChanged"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->N0()Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->setNoteQuotaViewModel(Lcom/onyx/galaxy/note/category/viewmodel/NoteQuotaViewModel;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->updateHeaderLockView()V

    goto :goto_0

    :cond_0
    const-string v0, "ShowLeftQuota"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->updateHeaderLockView()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final q1(Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/OpenNotePageAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final r1(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->gotoFolder(Ljava/lang/String;)V

    new-instance p0, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/onyx/galaxy/note/category/action/UpdateNoteExpandStatusAction;-><init>(Ljava/util/List;I)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$q;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final s1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 6

    new-instance v0, Lcom/onyx/galaxy/note/category/action/OpenNoteAction;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v1, "requireActivity(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs$Companion;->createFrom(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/onyx/galaxy/note/category/action/OpenNoteAction;-><init>(Landroid/content/Context;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;Lcom/onyx/android/sdk/universal/editor/data/OpenDocArgs;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->execute$default(Lcom/onyx/android/sdk/base/rx/RxBaseAction;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final t1(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V
    .locals 1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/action/GetNoteCoverTemplateArgsAction;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$r;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const-string v0, "subscribe(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->k1:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public final u1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->safeAdd(Ljava/util/Collection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->swipeSelectItems(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->updateSwipeSelectItems(Ljava/util/Map;)V

    return-void
.end method

.method public final v1()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sunia/HTREnginev2/dxj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_0
    return-void
.end method

.method public final w0(Z)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sunia/HTREnginev2/hxj;

    invoke-direct {v1, p0, p1}, Lcom/sunia/HTREnginev2/hxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final x1(Z)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->getSelectionList()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->V0()Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getSelectList()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->F1()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x3e8

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string v2, "getRoot(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->T0()Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p1, p0, v0, v1}, Lcom/onyx/android/sdk/base/extension/ViewKt;->repostDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final y1()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initAdapter$clickCallback$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment$initAdapter$clickCallback$1;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v1, Lcom/sunia/HTREnginev2/ixj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/ixj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v2, Lcom/sunia/HTREnginev2/jxj;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/jxj;-><init>(Lcom/onyx/galaxy/note/category/ui/NoteListFragment;)V

    new-instance v3, Lcom/sunia/HTREnginev2/kxj;

    invoke-direct {v3}, Lcom/sunia/HTREnginev2/kxj;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;->setClickCallback(Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v0

    sget v4, Lcom/onyx/galaxy/note/R$id;->v_click_option:I

    invoke-virtual {v0, v4, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    invoke-virtual {v0, v1, v2}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->Q0()Lcom/onyx/galaxy/note/category/view/adapter/NotePageListAdapter;

    move-result-object v0

    sget v1, Lcom/onyx/galaxy/note/R$id;->v_click_open:I

    invoke-virtual {v0, v1, v3}, Lcom/chad/library/adapter4/BaseQuickAdapter;->addOnItemChildLongClickListener(ILcom/chad/library/adapter4/BaseQuickAdapter$OnItemChildLongClickListener;)Lcom/chad/library/adapter4/BaseQuickAdapter;

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {v0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->getAfterAdapterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->j1:Lcom/chad/library/adapter4/QuickAdapterHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->K0()Lcom/onyx/galaxy/note/category/view/adapter/NoteListFooterAdapter;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/chad/library/adapter4/QuickAdapterHelper;->addAfterAdapter(Lcom/chad/library/adapter4/BaseQuickAdapter;)Lcom/chad/library/adapter4/QuickAdapterHelper;

    :cond_0
    return-void
.end method

.method public final z0()V
    .locals 3

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/ui/NoteListFragment;->I0()Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/FragmentNoteListBinding;->rv:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "rv"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v2, Lcom/onyx/galaxy/note/R$dimen;->note_list_horizontal_margin:I

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
