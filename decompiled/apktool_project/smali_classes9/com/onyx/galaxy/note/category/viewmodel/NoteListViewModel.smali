.class public final Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;
.super Lcom/onyx/galaxy/note/common/base/BaseViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1161:1\n766#2:1162\n857#2,2:1163\n766#2:1165\n857#2,2:1166\n766#2:1168\n857#2,2:1169\n766#2:1171\n857#2,2:1172\n1747#2,3:1174\n1855#2,2:1177\n1855#2,2:1179\n2634#2:1181\n766#2:1183\n857#2,2:1184\n1855#2,2:1186\n766#2:1188\n857#2,2:1189\n1603#2,9:1191\n1855#2:1200\n1856#2:1202\n1612#2:1203\n1549#2:1204\n1620#2,3:1205\n350#2,7:1208\n766#2:1215\n857#2,2:1216\n350#2,7:1218\n1#3:1182\n1#3:1201\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n*L\n745#1:1162\n745#1:1163,2\n749#1:1165\n749#1:1166,2\n765#1:1168\n765#1:1169,2\n766#1:1171\n766#1:1172,2\n774#1:1174,3\n939#1:1177,2\n978#1:1179,2\n1002#1:1181\n1096#1:1183\n1096#1:1184,2\n1104#1:1186,2\n1120#1:1188\n1120#1:1189,2\n1121#1:1191,9\n1121#1:1200\n1121#1:1202\n1121#1:1203\n1128#1:1204\n1128#1:1205,3\n1149#1:1208,7\n1155#1:1215\n1155#1:1216,2\n1156#1:1218,7\n1002#1:1182\n1121#1:1201\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a6\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008(\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B\t\u00a2\u0006\u0006\u0008\u008e\u0002\u0010\u008f\u0002J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0002J\u0014\u0010\u000c\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\nH\u0002J\u000e\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0006H\u0002J\u0014\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u0006H\u0002J\u001c\u0010\u0012\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u001e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00022\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J \u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\u001c\u0010\u001e\u001a\u0004\u0018\u00010\u00182\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u001d\u001a\u00020\u0018H\u0002J\u001c\u0010!\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020 0\u001f0\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0002J\"\u0010$\u001a\u00020\u00042\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\nH\u0002J\u0008\u0010%\u001a\u00020\u0004H\u0002J\u0010\u0010\'\u001a\u00020&2\u0006\u0010\"\u001a\u00020&H\u0002J\u0008\u0010(\u001a\u00020\u0004H\u0002J\u0008\u0010)\u001a\u00020\u0004H\u0002J\u0008\u0010*\u001a\u00020\u0004H\u0002J\u0008\u0010+\u001a\u00020\u0004H\u0002J\u0008\u0010,\u001a\u00020\u0004H\u0002J\u0008\u0010-\u001a\u00020\u0004H\u0002J\u0008\u0010.\u001a\u00020\u0004H\u0002J\u000e\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fH\u0002J\u0016\u00101\u001a\u0008\u0012\u0004\u0012\u0002000\u00062\u0006\u0010\u0013\u001a\u00020\u0002H\u0002J.\u00107\u001a\u0008\u0012\u0004\u0012\u0002000\u00062\u0016\u00105\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020302j\u0002`40\u00062\u0006\u00106\u001a\u00020\u0018H\u0002J\u001c\u0010<\u001a\u00020\u00042\u0006\u00109\u001a\u0002082\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:H\u0002J\"\u0010?\u001a\u00020\u00042\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u00020=0\u001f2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:H\u0002J\u0010\u0010A\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0018H\u0002J\u0010\u0010B\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u0018H\u0002J\u0008\u0010C\u001a\u00020\u0004H\u0014J\u0006\u0010D\u001a\u00020\u0004J\u0006\u0010E\u001a\u00020\u0004J\u0006\u0010G\u001a\u00020FJ\u0006\u0010H\u001a\u00020FJ\u0006\u0010I\u001a\u00020\u0004J\u0006\u0010J\u001a\u00020\u0004J\u0006\u0010K\u001a\u00020\u0004J\u0006\u0010L\u001a\u00020\u0004J\u0006\u0010M\u001a\u00020\u0004J\u0006\u0010N\u001a\u00020\u0004J\u0006\u0010O\u001a\u00020\u0004J\u0010\u0010P\u001a\u00020\u00042\u0008\u0010@\u001a\u0004\u0018\u00010\u0018J\u0010\u0010Q\u001a\u00020\u00042\u0008\u0010@\u001a\u0004\u0018\u00010\u0018J\u0006\u0010R\u001a\u00020\u0004J\u0006\u0010S\u001a\u00020FJ\u0006\u0010T\u001a\u00020\u0004J\u0006\u0010U\u001a\u00020FJ\u0006\u0010V\u001a\u00020\u0004J\u0006\u0010W\u001a\u00020FJ\u0006\u0010X\u001a\u00020\u0004J\u0006\u0010Y\u001a\u00020\u0004J\u0016\u0010^\u001a\u00020\u00042\u0006\u0010[\u001a\u00020Z2\u0006\u0010]\u001a\u00020\\J\u000c\u0010_\u001a\u0008\u0012\u0004\u0012\u00020F0\u0006J\u000c\u0010`\u001a\u0008\u0012\u0004\u0012\u00020F0\u0006J\u0008\u0010a\u001a\u0004\u0018\u00010\u0018J\u0008\u0010b\u001a\u0004\u0018\u00010\u0018J\u0008\u0010c\u001a\u00020\u0004H\u0007J\u001a\u0010g\u001a\u000c\u0012\u0004\u0012\u00020e02j\u0002`f2\u0008\u0010d\u001a\u0004\u0018\u00010\u0018J$\u0010i\u001a\u0012\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020e02j\u0002`f0\u000f2\u000c\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u00180\u000fJ\u001e\u0010j\u001a\u0010\u0012\u0004\u0012\u000203\u0018\u000102j\u0004\u0018\u0001`42\u0008\u0010d\u001a\u0004\u0018\u00010\u0018J\u0008\u0010k\u001a\u0004\u0018\u00010\u0018J\u0008\u0010l\u001a\u0004\u0018\u00010\u0018J\u0006\u0010m\u001a\u00020\u0018J\u0006\u0010n\u001a\u00020\u0016J\u0008\u0010o\u001a\u00020\u0004H\u0007J\u0006\u0010p\u001a\u00020FJ6\u0010v\u001a\u00020\u00042\u0006\u0010r\u001a\u00020q2\u001a\u0010u\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020t\u0012\u0006\u0012\u0004\u0018\u00010\u00180s0\u001f2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:J \u0010y\u001a\u00020\u00042\u000c\u0010x\u001a\u0008\u0012\u0004\u0012\u00020w0\u001f2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:J\u0006\u0010z\u001a\u00020\u0004J \u0010v\u001a\u00020\u00042\u000c\u0010x\u001a\u0008\u0012\u0004\u0012\u00020w0\u001f2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:J(\u0010~\u001a\u00020\u00042\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u00020t0\u001f2\u0006\u0010}\u001a\u00020|2\n\u0008\u0002\u0010;\u001a\u0004\u0018\u00010:J\u000f\u0010\u0080\u0001\u001a\u00020F2\u0006\u0010\u007f\u001a\u00020eJ#\u0010\u0083\u0001\u001a\u000f\u0012\u0004\u0012\u00020e\u0012\u0004\u0012\u00020F0\u0082\u00012\r\u0010\u0081\u0001\u001a\u0008\u0012\u0004\u0012\u00020e0\u001fJ\u0007\u0010\u0084\u0001\u001a\u00020\u0004J\u0007\u0010\u0085\u0001\u001a\u00020\u0004J*\u0010\u0089\u0001\u001a\u00020\u00042\u0007\u0010\u0086\u0001\u001a\u00020\u00182\u0007\u0010\u0087\u0001\u001a\u00020\u00182\u0007\u0010\u0088\u0001\u001a\u00020\u00162\u0006\u0010\u000b\u001a\u00020\nJ\u0007\u0010\u008a\u0001\u001a\u00020\u0004R\u001c\u0010\u008f\u0001\u001a\u00030\u008b\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0005\u0010\u008c\u0001\u001a\u0006\u0008\u008d\u0001\u0010\u008e\u0001R\u0017\u0010\u0092\u0001\u001a\u00030\u0090\u00018\u0002X\u0082\u0004\u00a2\u0006\u0007\n\u0005\u0008\u0015\u0010\u0091\u0001R\u001d\u0010\u0098\u0001\u001a\u00030\u0093\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u0094\u0001\u0010\u0095\u0001\u001a\u0006\u0008\u0096\u0001\u0010\u0097\u0001R\u001d\u0010\u009e\u0001\u001a\u00030\u0099\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u009a\u0001\u0010\u009b\u0001\u001a\u0006\u0008\u009c\u0001\u0010\u009d\u0001R\u001c\u0010\u00a0\u0001\u001a\u00030\u0099\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\t\u0010\u009b\u0001\u001a\u0006\u0008\u009f\u0001\u0010\u009d\u0001R\u001c\u0010\u00a5\u0001\u001a\u00030\u00a1\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u000c\u0010\u00a2\u0001\u001a\u0006\u0008\u00a3\u0001\u0010\u00a4\u0001R\u001d\u0010\u00a7\u0001\u001a\u00030\u00a1\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00a6\u0001\u0010\u00a2\u0001\u001a\u0006\u0008\u00a7\u0001\u0010\u00a4\u0001R\u001c\u0010\u00a8\u0001\u001a\u00030\u00a1\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008-\u0010\u00a2\u0001\u001a\u0006\u0008\u00a8\u0001\u0010\u00a4\u0001R\u001c\u0010\u00aa\u0001\u001a\u00030\u0099\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008)\u0010\u009b\u0001\u001a\u0006\u0008\u00a9\u0001\u0010\u009d\u0001R+\u0010\u00ae\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008/\u0010\u00ad\u0001\u001a\u0006\u0008\u00ae\u0001\u0010\u00af\u0001R+\u0010\u00b0\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u00081\u0010\u00ad\u0001\u001a\u0006\u0008\u00b0\u0001\u0010\u00af\u0001R+\u0010\u00b1\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008A\u0010\u00ad\u0001\u001a\u0006\u0008\u00b1\u0001\u0010\u00af\u0001R+\u0010\u00b2\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008B\u0010\u00ad\u0001\u001a\u0006\u0008\u00b2\u0001\u0010\u00af\u0001R$\u0010\u00b4\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u00087\u0010\u00ad\u0001\u001a\u0006\u0008\u00b3\u0001\u0010\u00af\u0001R-\u0010\u00b7\u0001\u001a\u0014\u0012\u000f\u0012\r \u00ac\u0001*\u0005\u0018\u00010\u00b5\u00010\u00b5\u00010\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008?\u0010\u00ad\u0001\u001a\u0006\u0008\u00b6\u0001\u0010\u00af\u0001R8\u0010\u00ba\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 \u00ac\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00b8\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00b9\u0001\u0010\u00af\u0001R7\u0010\u00bc\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 \u00ac\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0011\u0010\u00ad\u0001\u001a\u0006\u0008\u00bb\u0001\u0010\u00af\u0001R7\u0010\u00be\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0010 \u00ac\u0001*\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000f0\u000f0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u0012\u0010\u00ad\u0001\u001a\u0006\u0008\u00bd\u0001\u0010\u00af\u0001R+\u0010\u00c0\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010&0&0\u00ab\u00018\u0006\u00a2\u0006\u000f\n\u0005\u0008\u001b\u0010\u00ad\u0001\u001a\u0006\u0008\u00bf\u0001\u0010\u00af\u0001R8\u0010\u00c3\u0001\u001a\u001e\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u00020\u0002 \u00ac\u0001*\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u001f0\u001f0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00c1\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00c2\u0001\u0010\u00af\u0001R,\u0010\u00c5\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00c4\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00c5\u0001\u0010\u00af\u0001R#\u0010\u00c9\u0001\u001a\t\u0012\u0004\u0012\u00020F0\u00c6\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00c7\u0001\u0010\u00c8\u0001\u001a\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001R,\u0010\u00cc\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00cb\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00cc\u0001\u0010\u00af\u0001R#\u0010\u00ce\u0001\u001a\t\u0012\u0004\u0012\u00020F0\u00c6\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00cd\u0001\u0010\u00c8\u0001\u001a\u0006\u0008\u00ce\u0001\u0010\u00ca\u0001R#\u0010\u00d0\u0001\u001a\t\u0012\u0004\u0012\u00020F0\u00c6\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00cf\u0001\u0010\u00c8\u0001\u001a\u0006\u0008\u00d0\u0001\u0010\u00ca\u0001R,\u0010\u00d2\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00d1\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00d2\u0001\u0010\u00af\u0001R,\u0010\u00d4\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00d3\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00d4\u0001\u0010\u00af\u0001R,\u0010\u00d6\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00d5\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00d6\u0001\u0010\u00af\u0001R-\u0010\u00d9\u0001\u001a\u0013\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020e02j\u0002`f0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00d7\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00d8\u0001\u0010\u00af\u0001R-\u0010\u00dc\u0001\u001a\u0013\u0012\u000e\u0012\u000c\u0012\u0004\u0012\u00020302j\u0002`40\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00da\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00db\u0001\u0010\u00af\u0001R,\u0010\u00df\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010\u00020\u00020\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00dd\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00de\u0001\u0010\u00af\u0001R,\u0010\u00e2\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010\n0\n0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00e0\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00e1\u0001\u0010\u00af\u0001R,\u0010\u00e5\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010Z0Z0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00e3\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00e4\u0001\u0010\u00af\u0001R,\u0010\u00e8\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010\\0\\0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00e6\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00e7\u0001\u0010\u00af\u0001R,\u0010\u00eb\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010F0F0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00e9\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ea\u0001\u0010\u00af\u0001R,\u0010\u00ee\u0001\u001a\u0012\u0012\r\u0012\u000b \u00ac\u0001*\u0004\u0018\u00010&0&0\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00ec\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00ed\u0001\u0010\u00af\u0001R$\u0010\u00f2\u0001\u001a\n\u0012\u0005\u0012\u00030\u00ef\u00010\u00ab\u00018\u0006\u00a2\u0006\u0010\n\u0006\u0008\u00f0\u0001\u0010\u00ad\u0001\u001a\u0006\u0008\u00f1\u0001\u0010\u00af\u0001R\u0018\u0010\u00f4\u0001\u001a\u00030\u00a1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00a2\u0001R\u0018\u0010\u00f6\u0001\u001a\u00030\u00a1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0001\u0010\u00a2\u0001R\u0018\u0010\u00f8\u0001\u001a\u00030\u00a1\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f7\u0001\u0010\u00a2\u0001R \u0010\u00fa\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0001\u0010\u00ad\u0001R \u0010\u00fc\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u00ab\u00018\u0002X\u0082\u0004\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0001\u0010\u00ad\u0001R\u001c\u0010\u0080\u0002\u001a\u0005\u0018\u00010\u00fd\u00018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00ff\u0001R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u0083\u0002R\u001f\u0010\u0087\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0085\u0002\u0010\u0086\u0002R(\u0010\u008d\u0002\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0017\n\u0005\u0008\u0088\u0002\u0010%\u001a\u0006\u0008\u0089\u0002\u0010\u008a\u0002\"\u0006\u0008\u008b\u0002\u0010\u008c\u0002\u00a8\u0006\u0090\u0002"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
        "Lcom/onyx/galaxy/note/common/base/BaseViewModel;",
        "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
        "info",
        "",
        "i",
        "Lio/reactivex/rxjava3/core/Observable;",
        "B",
        "Lcom/onyx/android/sdk/replicator/note/bean/SortData;",
        "m",
        "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
        "noteSelectType",
        "n",
        "D",
        "A",
        "",
        "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
        "y",
        "z",
        "filter",
        "notePageList",
        "j",
        "",
        "level",
        "",
        "title",
        "maxLevel",
        "J",
        "value",
        "rootId",
        "F",
        "",
        "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
        "C",
        "list",
        "ignore",
        "S",
        "I",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
        "K",
        "G",
        "q",
        "P",
        "R",
        "E",
        "p",
        "H",
        "r",
        "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
        "s",
        "Lcom/onyx/android/sdk/base/data/TreeNode;",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTagNode;",
        "rootTag",
        "parentTagId",
        "v",
        "Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;",
        "importArgs",
        "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
        "importSelectedContext",
        "M",
        "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
        "entries",
        "w",
        "id",
        "t",
        "u",
        "onCleared",
        "toggleDisplayType",
        "gotoUp",
        "",
        "isFilterRootFolder",
        "isFilterFolder",
        "gotoSearch",
        "gotoNoteSet",
        "gotoUnClassfied",
        "gotoNoTag",
        "gotoDustBin",
        "gotoFolderRoot",
        "gotoTagRoot",
        "gotoFolder",
        "gotoTag",
        "toggleNoteSetExpand",
        "isNoteSetExpand",
        "toggleFolderExpand",
        "isFolderExpand",
        "toggleTagExpand",
        "isTagExpand",
        "toggleSideExpand",
        "toggleMulSelect",
        "Lcom/onyx/android/sdk/base/data/SortBy;",
        "sortBy",
        "Lcom/onyx/android/sdk/base/data/SortOrder;",
        "sortOrder",
        "toggleSort",
        "loadNoteFoldTree",
        "loadTagTree",
        "getNormalizedFolderId",
        "getNormalizedTagId",
        "initList",
        "uniqueId",
        "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
        "Lcom/onyx/android/sdk/replicator/note/utils/NoteTreeNode;",
        "findFolder",
        "uniqueIds",
        "findFolders",
        "findTag",
        "getCurrentFolderId",
        "getCurrentTagId",
        "getSortName",
        "getSortIconId",
        "loadFilterList",
        "isSyncFinished",
        "Landroid/content/Context;",
        "activityContext",
        "Lkotlin/Pair;",
        "Landroid/net/Uri;",
        "uriList",
        "importDocuments",
        "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
        "fileList",
        "convertDocumentsOnline",
        "cancelDocConvert",
        "uris",
        "Lcom/onyx/android/sdk/data/NoteCreateFrom;",
        "noteCreateFrom",
        "importImages",
        "model",
        "toggleSelectList",
        "models",
        "",
        "swipeSelectItems",
        "resetFolderRootListData",
        "checkCloudSyncCondition",
        "originId",
        "targetId",
        "dragState",
        "customSortNoteList",
        "updateCurrFilterTitle",
        "Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;",
        "Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;",
        "getSelectTypeOp",
        "()Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;",
        "selectTypeOp",
        "Lcom/onyx/galaxy/note/utils/NoteSortHelper;",
        "Lcom/onyx/galaxy/note/utils/NoteSortHelper;",
        "sortHelper",
        "Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;",
        "k",
        "Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;",
        "getNoteDisplayTypeOp",
        "()Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;",
        "noteDisplayTypeOp",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "l",
        "Lcom/onyx/android/sdk/data/utils/StringOption;",
        "getFolderIdOp",
        "()Lcom/onyx/android/sdk/data/utils/StringOption;",
        "folderIdOp",
        "getTagIdOp",
        "tagIdOp",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "getSlideExpandOp",
        "()Lcom/onyx/android/sdk/data/utils/BooleanOption;",
        "slideExpandOp",
        "o",
        "isTopLevelOp",
        "isBottomLevelOp",
        "getCurrTitleOp",
        "currTitleOp",
        "Landroidx/lifecycle/MutableLiveData;",
        "kotlin.jvm.PlatformType",
        "Landroidx/lifecycle/MutableLiveData;",
        "isTopLevel",
        "()Landroidx/lifecycle/MutableLiveData;",
        "isBottomLevel",
        "isSideExpand",
        "isInMultiWindowMode",
        "getCurrTitle",
        "currTitle",
        "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
        "getDisplayType",
        "displayType",
        "x",
        "getTabAllListData",
        "tabAllListData",
        "getTabNoteListData",
        "tabNoteListData",
        "getTabPdfListData",
        "tabPdfListData",
        "getFolderRootListData",
        "folderRootListData",
        "O",
        "getFilterList",
        "filterList",
        "Q",
        "isMulSelect",
        "Landroidx/lifecycle/MediatorLiveData;",
        "Z",
        "Landroidx/lifecycle/MediatorLiveData;",
        "isTopAndIsExpanded",
        "()Landroidx/lifecycle/MediatorLiveData;",
        "k0",
        "isLoadingList",
        "q0",
        "isShowSlideMenu",
        "t0",
        "isShowDrawerMenu",
        "u0",
        "isHalfInMultiWindowMode",
        "v0",
        "isSlideAnimating",
        "w0",
        "isViewPagerAnimating",
        "x0",
        "getFolderRootNode",
        "folderRootNode",
        "y0",
        "getTagRootNode",
        "tagRootNode",
        "z0",
        "getFilterInfo",
        "filterInfo",
        "A0",
        "getSelectType",
        "selectType",
        "B0",
        "getSortType",
        "sortType",
        "C0",
        "getOrderType",
        "orderType",
        "D0",
        "getAllowCloudSync",
        "allowCloudSync",
        "E0",
        "getSelectList",
        "selectList",
        "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
        "F0",
        "getNoteUsageInfo",
        "noteUsageInfo",
        "G0",
        "noteExpandOp",
        "H0",
        "folderExpandOp",
        "I0",
        "tagExpandOp",
        "J0",
        "folderId",
        "K0",
        "tagId",
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;",
        "L0",
        "Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;",
        "docConvertAction",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "M0",
        "Lio/reactivex/rxjava3/disposables/Disposable;",
        "loadListDispose",
        "N0",
        "Ljava/util/List;",
        "allDataList",
        "O0",
        "getSyncProgress",
        "()I",
        "setSyncProgress",
        "(I)V",
        "syncProgress",
        "<init>",
        "()V",
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
        "SMAP\nNoteListViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1161:1\n766#2:1162\n857#2,2:1163\n766#2:1165\n857#2,2:1166\n766#2:1168\n857#2,2:1169\n766#2:1171\n857#2,2:1172\n1747#2,3:1174\n1855#2,2:1177\n1855#2,2:1179\n2634#2:1181\n766#2:1183\n857#2,2:1184\n1855#2,2:1186\n766#2:1188\n857#2,2:1189\n1603#2,9:1191\n1855#2:1200\n1856#2:1202\n1612#2:1203\n1549#2:1204\n1620#2,3:1205\n350#2,7:1208\n766#2:1215\n857#2,2:1216\n350#2,7:1218\n1#3:1182\n1#3:1201\n*S KotlinDebug\n*F\n+ 1 NoteListViewModel.kt\ncom/onyx/galaxy/note/category/viewmodel/NoteListViewModel\n*L\n745#1:1162\n745#1:1163,2\n749#1:1165\n749#1:1166,2\n765#1:1168\n765#1:1169,2\n766#1:1171\n766#1:1172,2\n774#1:1174,3\n939#1:1177,2\n978#1:1179,2\n1002#1:1181\n1096#1:1183\n1096#1:1184,2\n1104#1:1186,2\n1120#1:1188\n1120#1:1189,2\n1121#1:1191,9\n1121#1:1200\n1121#1:1202\n1121#1:1203\n1128#1:1204\n1128#1:1205,3\n1149#1:1208,7\n1155#1:1215\n1155#1:1216,2\n1156#1:1218,7\n1002#1:1182\n1121#1:1201\n*E\n"
    }
.end annotation


# instance fields
.field public final A0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final B0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final C0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final D0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final E0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final F0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final G0:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final H0:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final I0:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final J0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final K0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public L0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public M0:Lio/reactivex/rxjava3/disposables/Disposable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public N0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final O:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public O0:I

.field public final Q:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Z:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/onyx/galaxy/note/utils/NoteSortHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final n:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final o:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final p:Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q:Lcom/onyx/android/sdk/data/utils/StringOption;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final q0:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final r:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final s:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final t0:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final u0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final v0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final w0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final x0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final y0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final z0:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/onyx/galaxy/note/common/base/BaseViewModel;-><init>()V

    new-instance v7, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i:Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;

    new-instance v1, Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-direct {v1}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;-><init>()V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->j:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    new-instance v2, Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x7

    const/4 v13, 0x0

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;-><init>(Ljava/lang/String;Lcom/tencent/mmkv/MMKV;Lcom/onyx/galaxy/note/category/data/NoteDisplayType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k:Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;

    new-instance v3, Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v4, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->INSTANCE:Lcom/onyx/android/sdk/data/utils/MMKVUtils;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v15

    const-string v16, "note_list_folder_id"

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    move-object v14, v3

    invoke-direct/range {v14 .. v19}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    new-instance v5, Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    const-string v10, "note_list_tag_id"

    const/4 v12, 0x4

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v5, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    new-instance v6, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v8

    const-string v9, "note_list_slide_is_expand"

    const/4 v10, 0x1

    invoke-direct {v6, v8, v9, v10}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    iput-object v6, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->n:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v8, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v9

    const-string v11, "note_list_is_top_level"

    invoke-direct {v8, v9, v11, v10}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    iput-object v8, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v9, Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v10

    const-string v11, "note_list_is_bottom_level"

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/onyx/android/sdk/data/utils/BooleanOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Z)V

    iput-object v9, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v10, Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/data/utils/MMKVUtils;->get()Lcom/tencent/mmkv/MMKV;

    move-result-object v4

    sget-object v11, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v12, Lcom/onyx/galaxy/note/R$string;->all_note:I

    invoke-virtual {v11, v12}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v12, "note_list_curr_title"

    invoke-direct {v10, v4, v12, v11}, Lcom/onyx/android/sdk/data/utils/StringOption;-><init>(Lcom/tencent/mmkv/MMKV;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v10, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    new-instance v4, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v8}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-direct {v4, v8}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v9}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v8, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    new-instance v8, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v6}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v8, v6}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v8, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    new-instance v6, Landroidx/lifecycle/MutableLiveData;

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v6, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v6, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    new-instance v11, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v11, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    new-instance v10, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;->get()Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    move-result-object v2

    invoke-direct {v10, v2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v10

    invoke-direct {v2, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v10

    invoke-direct {v2, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v10

    invoke-direct {v2, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    new-instance v10, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v10}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-direct {v2, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v2, v10}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q:Landroidx/lifecycle/MutableLiveData;

    new-instance v2, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v2, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Z:Landroidx/lifecycle/MediatorLiveData;

    new-instance v10, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v10, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v10, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k0:Landroidx/lifecycle/MutableLiveData;

    new-instance v10, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v10}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v10, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q0:Landroidx/lifecycle/MediatorLiveData;

    new-instance v11, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v11}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v11, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t0:Landroidx/lifecycle/MediatorLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v12}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    sget-object v13, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v13}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v13

    invoke-direct {v12, v13}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    new-instance v12, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v7}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->get()Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    move-result-object v7

    invoke-direct {v12, v7}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v12, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->A0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->getSortType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v7

    iput-object v7, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->getOrderType()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1, v9}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->D0:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    new-instance v7, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v7}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-direct {v1, v7}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->F0:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->getNoteSetExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->G0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;->getNoteFolderRootExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->H0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;->getNoteTagRootExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual/range {p0 .. p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    const/4 v1, -0x1

    iput v1, v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O0:I

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$1;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$1;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v6, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$2;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$2;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v10, v8, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$3;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$3;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v6, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$4;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$4;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v11, v8, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$5;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$5;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v4, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$6;

    invoke-direct {v1, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$6;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;

    invoke-direct {v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v2, v10, v0}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static final L(ZLcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result p0

    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static synthetic N(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static final O(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static synthetic T(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->S(Ljava/util/List;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    return-void
.end method

.method public static final synthetic access$addHeaderIfInNeed(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->j(Lcom/onyx/galaxy/note/category/data/FilterInfo;Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic access$createFolderRootManualSortData(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m()Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createManualSortData(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->n(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllDataList$p(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getNoteCBArgsByFilterInfo(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s(Lcom/onyx/galaxy/note/category/data/FilterInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSortHelper$p(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Lcom/onyx/galaxy/note/utils/NoteSortHelper;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->j:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    return-object p0
.end method

.method public static final synthetic access$loadData(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadDustBinData(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$loadNotePageDataList(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$sortFolderRootList(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic convertDocumentsOnline$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->convertDocumentsOnline(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic d(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 0

    invoke-static {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic g(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(ZLcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->L(ZLcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic importDocuments$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic importDocuments$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic importImages$default(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importImages(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static final k(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->D0:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->INSTANCE:Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/account/AccountDataBundle;->canSync()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public static final l(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_apply"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->getImportList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method

.method public static synthetic o(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/NoteSelectType;ILjava/lang/Object;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->n(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void
.end method


# virtual methods
.method public final A()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$w;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$w;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$x;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$x;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$y;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$y;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$z;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$z;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final B()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/android/sdk/base/data/SortBy;

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-static {v0, v1, v2}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->sortWith(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    sget-object v2, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d0;

    invoke-direct {v2, v0, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d0;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$e0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$e0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$f0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$f0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final C(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;

    invoke-direct {v0, p0, p1}, Lcom/onyx/galaxy/note/category/action/LoadPageModelsAction;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final D()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l0;-><init>(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m0;

    invoke-direct {v2, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m0;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$n0;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$n0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$o0;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$o0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p0;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$q0;

    invoke-direct {v2, v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$q0;-><init>(Ljava/lang/String;Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$r0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$r0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final E()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->no_mark:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->no_mark:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-nez p0, :cond_2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final G()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->all_note:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->all_note:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final H()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final I()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i:Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    invoke-virtual {v0, v1}, Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;->put(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->A0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final J(ILjava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    if-lt p1, p3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    if-gt p1, v2, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    if-lt p1, p3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0, p2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    return-void
.end method

.method public final K(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;)Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v0, v1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v4}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isLibrary()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v5}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->isDocument()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    if-ne v3, v4, :cond_5

    new-instance p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;

    invoke-direct {p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$sortFolderRootList$comparator$1;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    goto :goto_4

    :cond_5
    instance-of p0, p1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz p0, :cond_6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->getOrderIndex()F

    move-result p1

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float p1, p1, v4

    const/4 v4, 0x1

    if-nez p1, :cond_8

    move p1, v4

    goto :goto_2

    :cond_8
    move p1, v3

    :goto_2
    xor-int/2addr p1, v4

    if-eqz p1, :cond_7

    move v3, v4

    :cond_9
    :goto_3
    new-instance p1, Lcom/sunia/HTREnginev2/myj;

    invoke-direct {p1, v3}, Lcom/sunia/HTREnginev2/myj;-><init>(Z)V

    :goto_4
    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public final M(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportFolderName(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportTagNameList(Ljava/util/List;)V

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;->resetNoteImportArg(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;)V

    :cond_5
    return-void
.end method

.method public final P()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v2, "tag_root_id"

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->tag:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->tag:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final R()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, "folder_root_id"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->no_classify:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->no_classify:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/util/List;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_ALL:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_NOTE:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteScene()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteDoc()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isHeaderType()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v6, v2

    goto :goto_1

    :cond_4
    move v6, v1

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_6
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSelectType;->TAB_PDF:Lcom/onyx/galaxy/note/category/data/NoteSelectType;

    if-eq p2, v0, :cond_c

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    check-cast p1, Ljava/lang/Iterable;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPdfScene()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteDoc()Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isHeaderType()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    move v3, v2

    goto :goto_3

    :cond_a
    move v3, v1

    :goto_3
    if-eqz v3, :cond_7

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_b
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_c
    return-void
.end method

.method public final cancelDocConvert()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->L0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->L0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    return-void
.end method

.method public final checkCloudSyncCondition()V
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

    new-instance v1, Lcom/sunia/HTREnginev2/nyj;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/nyj;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

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

.method public final convertDocumentsOnline(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    const-string v0, "fileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;

    sget-object v2, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    new-instance v3, Lcom/onyx/android/sdk/event/StatisticsImportFileTypeEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/onyx/android/sdk/event/StatisticsImportFileTypeEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->postEvent(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/utils/ResManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->importDocuments(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    return-void

    :cond_1
    new-instance v0, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->docManagerBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->L0:Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/sunia/HTREnginev2/lyj;

    invoke-direct {v1, p0, v0, p2}, Lcom/sunia/HTREnginev2/lyj;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/docmanager/action/DocConvertAction;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doFinally(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final customSortNoteList(Ljava/lang/String;Ljava/lang/String;ILcom/onyx/galaxy/note/category/data/NoteSelectType;)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/galaxy/note/category/data/NoteSelectType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "originId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "targetId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteSelectType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u(Ljava/lang/String;)I

    move-result v2

    if-ltz v0, :cond_13

    if-ltz v1, :cond_13

    if-eq v0, v1, :cond_13

    add-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    if-eq p3, v3, :cond_13

    :cond_0
    sub-int/2addr p1, v3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    goto/16 :goto_b

    :cond_1
    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    move-object v4, p1

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isPageType()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v9}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getPageModelBean()Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/onyx/android/sdk/replicator/note/db/model/PageTagModel;->getDocumentId()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_3
    move-object v9, v8

    :goto_1
    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v3

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    if-eqz v8, :cond_2

    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v8

    :goto_3
    const/high16 v6, -0x40800000    # -1.0f

    if-nez v2, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    :goto_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v8

    :cond_9
    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v8, v6}, Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;->setOrderIndex(F)V

    :goto_5
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t(Ljava/lang/String;)I

    move-result p2

    if-ne p3, v3, :cond_c

    invoke-interface {p1, p2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_7

    :cond_c
    add-int/2addr p2, v3

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result p3

    if-le p2, p3, :cond_d

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_7

    :cond_d
    invoke-interface {p1, p2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :goto_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_e
    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_10
    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    sget-object p3, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$customSortNoteList$reorderList$1;->INSTANCE:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$customSortNoteList$reorderList$1;

    sget-object v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$customSortNoteList$reorderList$2;->INSTANCE:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$customSortNoteList$reorderList$2;

    invoke-virtual {p3, p2, v0, v1}, Lcom/onyx/android/sdk/replicator/note/utils/OrderListUtils;->reorderIndex(Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;->getSortModel()Lcom/onyx/android/sdk/replicator/note/db/model/SortModel;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    new-instance p2, Lcom/onyx/galaxy/note/category/action/SaveSortAction;

    invoke-direct {p2, p3}, Lcom/onyx/galaxy/note/category/action/SaveSortAction;-><init>(Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    iput-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    invoke-virtual {p0, p1, p4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->S(Ljava/util/List;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)V

    :cond_13
    :goto_b
    return-void
.end method

.method public final findFolder(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final findFolders(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uniqueIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v0, p0

    check-cast v0, Lcom/onyx/android/sdk/base/data/TreeNode;

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$findFolders$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$findFolders$1;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNodes$default(Lcom/onyx/android/sdk/base/data/TreeNode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final findTag(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz p0, :cond_3

    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$findTag$1;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$findTag$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public final getAllowCloudSync()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->D0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCurrTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getCurrTitleOp()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getCurrentFolderId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "folder_root_id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCurrentTagId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "tag_root_id"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return-object p0

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getDisplayType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/NoteDisplayType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getFilterInfo()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getFilterList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getFolderIdOp()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getFolderRootListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getFolderRootNode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getNormalizedFolderId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "folder_root_id"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNormalizedTagId()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tag_root_id"

    invoke-virtual {p0, v0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->F(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNoteDisplayTypeOp()Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k:Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;

    return-object p0
.end method

.method public final getNoteUsageInfo()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/data/sync/bean/NoteUsageInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->F0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getOrderType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortOrder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSelectList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSelectType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->A0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSelectTypeOp()Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i:Lcom/onyx/galaxy/note/settings/data/NoteSelectTypeOption;

    return-object p0
.end method

.method public final getSlideExpandOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->n:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final getSortIconId()I
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/SortBy;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_name_asc:I

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_name_desc:I

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_create_asc:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_create_desc:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_update_asc:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_update_desc:I

    goto :goto_0

    :cond_5
    sget p0, Lcom/onyx/galaxy/note/R$drawable;->icon_note_sort_custom:I

    :goto_0
    return p0
.end method

.method public final getSortName()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/android/sdk/base/data/SortBy;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/android/sdk/base/data/SortOrder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Name:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/onyx/android/sdk/base/data/SortOrder;->Asc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_name_asc:I

    goto/16 :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortOrder;->Desc:Lcom/onyx/android/sdk/base/data/SortOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_name_desc:I

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortBy;->CreationTime:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_create_asc:I

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_create_desc:I

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/onyx/android/sdk/base/data/SortBy;->UpdateAt:Lcom/onyx/android/sdk/base/data/SortBy;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_update_asc:I

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_update_desc:I

    goto :goto_0

    :cond_5
    sget p0, Lcom/onyx/galaxy/note/R$string;->note_sort_custom:I

    :goto_0
    sget-object v0, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getSortType()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/SortBy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getSyncProgress()I
    .locals 0

    iget p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O0:I

    return p0
.end method

.method public final getTabAllListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTabNoteListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTabPdfListData()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getTagIdOp()Lcom/onyx/android/sdk/data/utils/StringOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    return-object p0
.end method

.method public final getTagRootNode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final gotoDustBin()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteDustBinFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoFolder(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getFolderRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->exceedMaxLevel(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->exceedMaxLevel(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    :cond_3
    return-void
.end method

.method public final gotoFolderRoot()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoNoTag()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag;->Companion:Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteSetNoTag$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoNoteSet()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteAllFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteAllFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->G()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoSearch()V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/SearchFilter;->Companion:Lcom/onyx/galaxy/note/category/data/SearchFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/SearchFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final gotoTag(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Ljava/lang/String;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    new-instance v1, Lcom/onyx/galaxy/note/category/data/NoteTagFilterInfo;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/data/NoteTagFilterInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->exceedMaxLevel(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->exceedMaxLevel(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    :cond_3
    return-void
.end method

.method public final gotoTagRoot()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->P()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoUnClassfied()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied;->Companion:Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied$Companion;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteSetUnClassfied$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->R()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I()V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->initList()V

    return-void
.end method

.method public final gotoUp()V
    .locals 6

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "folder_root_id"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x6

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->x0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz v3, :cond_2

    new-instance v5, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$gotoUp$pNode$1;

    invoke-direct {v5, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$gotoUp$pNode$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v5, Lcom/onyx/galaxy/note/R$string;->folder:I

    invoke-virtual {v3, v5}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v5, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;

    invoke-virtual {v5}, Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/NoteFolderRootFilterInfo;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;

    invoke-direct {v5, v2}, Lcom/onyx/galaxy/note/category/data/NoteFolderFilterInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    :goto_0
    iget-object v5, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v5, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v0

    invoke-virtual {p0, v0, v3, v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J(ILjava/lang/String;I)V

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    const-string v0, "tag_root_id"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/StringKt;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->y0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/base/data/TreeNode;

    if-eqz v2, :cond_6

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$gotoUp$pNode$2;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$gotoUp$pNode$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/data/TreeNode;->findNode(Lkotlin/jvm/functions/Function1;)Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getParent()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->isRootNode()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->tag:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter;->Companion:Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/category/data/NoteTagRootFilter$Companion;->getInfo()Lcom/onyx/galaxy/note/category/data/NoteTagRootFilterInfo;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncTagModel;->getContent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/data/NoteTagFilterInfo;

    invoke-direct {v3, v0}, Lcom/onyx/galaxy/note/category/data/NoteTagFilterInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    :goto_3
    iget-object v3, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->levelToRoot()I

    move-result v0

    invoke-virtual {p0, v0, v2, v4}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J(ILjava/lang/String;I)V

    nop

    :cond_6
    :goto_4
    return-void
.end method

.method public final i(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V
    .locals 1

    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activate(Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->H()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final importDocuments(Landroid/content/Context;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    const-string v0, "activityContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;

    invoke-direct {v0, p2}, Lcom/onyx/android/sdk/filepicker/QueryInfoFromUriAction;-><init>(Ljava/util/List;)V

    .line 2
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$a;

    invoke-direct {v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$b;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$b;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$c;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$c;

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 6
    new-instance p2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;

    invoke-direct {p2, p0, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$d;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string p0, "doOnNext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final importDocuments(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/universal/editor/data/DocumentFileEntry;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
        }
    .end annotation

    const-string v0, "fileList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    .line 9
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 11
    invoke-virtual {v0, p1, v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->createFromDocEntries(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    .line 13
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->getImportFileUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setOriginUri(Landroid/net/Uri;)V

    .line 14
    invoke-virtual {p0, v1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    goto :goto_0

    .line 15
    :cond_0
    check-cast p1, Ljava/util/List;

    .line 16
    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importDocuments$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V

    return-void
.end method

.method public final importImages(Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/NoteCreateFrom;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    const-string v0, "uris"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteCreateFrom"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$importImages$1;

    invoke-direct {v1, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$importImages$1;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$e;

    invoke-direct {v1, p1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$e;-><init>(Ljava/util/List;Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$f;

    invoke-direct {p1, p3}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$f;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$g;-><init>(Lcom/onyx/android/sdk/data/NoteCreateFrom;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final initList()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M0:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->D()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->A()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$h;

    invoke-direct {v2, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$h;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnSubscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$i;

    invoke-direct {v2, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$i;-><init>(Lio/reactivex/rxjava3/core/Observable;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$j;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$j;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M0:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final isBottomLevel()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isBottomLevelOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final isFilterFolder()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFilterRootFolder()Z
    .locals 1

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFolderExpand()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->H0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final isHalfInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isInMultiWindowMode()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->u:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isLoadingList()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isMulSelect()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isNoteSetExpand()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->G0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final isShowDrawerMenu()Landroidx/lifecycle/MediatorLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t0:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public final isShowSlideMenu()Landroidx/lifecycle/MediatorLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q0:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public final isSideExpand()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isSlideAnimating()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isSyncFinished()Z
    .locals 1

    iget p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O0:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isTagExpand()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result p0

    return p0
.end method

.method public final isTopAndIsExpanded()Landroidx/lifecycle/MediatorLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Z:Landroidx/lifecycle/MediatorLiveData;

    return-object p0
.end method

.method public final isTopLevel()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final isTopLevelOp()Lcom/onyx/android/sdk/data/utils/BooleanOption;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    return-object p0
.end method

.method public final isViewPagerAnimating()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w0:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final j(Lcom/onyx/galaxy/note/category/data/FilterInfo;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    invoke-interface {p2, p1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final loadFilterList()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadFilterListAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$a0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$a0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$b0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$b0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$c0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$c0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final loadNoteFoldTree()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadNoteFolderTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadNoteFolderTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$h0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$h0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$i0;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$i0;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final loadTagTree()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$j0;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$j0;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object v0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k0;->e:Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k0;

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setFilterId(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setSubFilterId(Ljava/lang/String;)V

    return-object v0
.end method

.method public final n(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/replicator/note/bean/SortData;
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/base/data/SortBy;->Manual:Lcom/onyx/android/sdk/base/data/SortBy;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/SortData;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;-><init>()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setFilterId(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/note/bean/SortData;->setSubFilterId(Ljava/lang/String;)V

    return-object v0
.end method

.method public onCleared()V
    .locals 0

    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M0:Lio/reactivex/rxjava3/disposables/Disposable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final p()V
    .locals 4

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/galaxy/note/R$string;->dustbin:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->dustbin:I

    invoke-virtual {v2, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final q()V
    .locals 5

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->l:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v1, "folder_root_id"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->m:Lcom/onyx/android/sdk/data/utils/StringOption;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->o:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->p:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    sget-object v3, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v4, Lcom/onyx/galaxy/note/R$string;->folder:I

    invoke-virtual {v3, v4}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->K0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->r:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->s:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    sget v0, Lcom/onyx/galaxy/note/R$string;->folder:I

    invoke-virtual {v3, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final r()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->activeFilterInfo()Lcom/onyx/galaxy/note/category/data/FilterInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result p0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/onyx/galaxy/note/category/data/NotePageBean;-><init>(ILcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;Lcom/onyx/android/sdk/replicator/note/bean/PageModelBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {p0}, [Lcom/onyx/galaxy/note/category/data/NotePageBean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final resetFolderRootListData()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->J:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcom/onyx/galaxy/note/category/data/FilterInfo;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/FilterInfo;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/data/TreeNode;->findChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;

    invoke-direct {v0}, Lcom/onyx/galaxy/note/category/action/LoadTagTreeAction;-><init>()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getTagRootNote()Lcom/onyx/android/sdk/base/data/TreeNode;

    move-result-object v0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final setSyncProgress(I)V
    .locals 0

    iput p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->O0:I

    return-void
.end method

.method public final swipeSelectItems(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$swipeSelectItems$contains$1;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$swipeSelectItems$contains$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {v0, v3}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$swipeSelectItems$1;

    invoke-direct {v4, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$swipeSelectItems$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    new-instance v5, Lcom/sunia/HTREnginev2/kyj;

    invoke-direct {v5, v4}, Lcom/sunia/HTREnginev2/kyj;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_1
    xor-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final t(Ljava/lang/String;)I
    .locals 4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_3
    return v1
.end method

.method public final toggleDisplayType()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->isGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_LIST:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;->DISPLAY_GRID:Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->k:Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Lcom/onyx/galaxy/note/category/data/NoteDisplayType;

    invoke-virtual {v0, p0}, Lcom/onyx/galaxy/note/settings/data/NoteDisplayTypeOption;->put(Lcom/onyx/galaxy/note/category/data/NoteDisplayType;)V

    return-void
.end method

.method public final toggleFolderExpand()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->H0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final toggleMulSelect()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->Q:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final toggleNoteSetExpand()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->G0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final toggleSelectList(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)Z
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBeanList;-><init>()V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$toggleSelectList$contains$1;

    invoke-direct {v1, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$toggleSelectList$contains$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->contains(Ljava/lang/Iterable;Lkotlin/jvm/functions/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$toggleSelectList$1;

    invoke-direct {v2, p1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$toggleSelectList$1;-><init>(Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;)V

    new-instance p1, Lcom/sunia/HTREnginev2/oyj;

    invoke-direct {p1, v2}, Lcom/sunia/HTREnginev2/oyj;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->E0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final toggleSideExpand()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->w0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/BooleanKt;->toInteger(Ljava/lang/Boolean;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "homepage_state"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "click_galaxy_homepage_0002"

    invoke-virtual {v0, v2, v1}, Lcom/onyx/galaxy/note/common/statistics/StatisticsBundle;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->n:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->t:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final toggleSort(Lcom/onyx/android/sdk/base/data/SortBy;Lcom/onyx/android/sdk/base/data/SortOrder;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/SortBy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/base/data/SortOrder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sortBy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sortOrder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->B0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->j:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->getSortByOp()Lcom/onyx/galaxy/note/settings/data/SortByOption;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/settings/data/SortByOption;->put(Lcom/onyx/android/sdk/base/data/SortBy;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->C0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->j:Lcom/onyx/galaxy/note/utils/NoteSortHelper;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/utils/NoteSortHelper;->getSortOrderOp()Lcom/onyx/galaxy/note/settings/data/SortOrderOption;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/onyx/galaxy/note/settings/data/SortOrderOption;->put(Lcom/onyx/android/sdk/base/data/SortOrder;)V

    return-void
.end method

.method public final toggleTagExpand()V
    .locals 1

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->I0:Lcom/onyx/android/sdk/data/utils/BooleanOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/data/utils/BooleanOption;->put(Z)V

    return-void
.end method

.method public final u(Ljava/lang/String;)I
    .locals 4

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->N0:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/galaxy/note/category/data/NotePageBean;

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->isNoteType()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/onyx/galaxy/note/category/data/NotePageBean;->getNoteModelBean()Lcom/onyx/android/sdk/replicator/note/bean/NoteModelBean;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    move v2, v0

    :goto_3
    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, -0x1

    :goto_4
    return v1
.end method

.method public final updateCurrFilterTitle()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;

    invoke-virtual {v1, v0}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle$FilterManager;->getRootFilterTitleRes(I)I

    move-result v0

    sget-object v1, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/base/utils/ResManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/data/utils/StringOption;->put(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->v:Landroidx/lifecycle/MutableLiveData;

    iget-object p0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->q:Lcom/onyx/android/sdk/data/utils/StringOption;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/data/utils/StringOption;->get()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final v(Lio/reactivex/rxjava3/core/Observable;Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/base/data/TreeNode<",
            "Lcom/onyx/android/sdk/replicator/note/bean/NoteTagBean;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;

    invoke-direct {p0, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$getTagFilterArgs$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final w(Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;",
            ")V"
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

    check-cast v1, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getImportUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->Companion:Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->getNormalizedTagId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->listOfNotNull(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs$Companion;->create(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;

    move-result-object v2

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getDownloadLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setImportFilePath(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setOriginUri(Landroid/net/Uri;)V

    invoke-virtual {p0, v2, p2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->M(Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;Lcom/onyx/android/sdk/universal/editor/data/ImportSelectedContext;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertEntry;->getStatus()Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    move-result-object v1

    sget-object v3, Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;->RESULT_SUCCESS:Lcom/onyx/android/sdk/data/serverconvert/bean/ConvertResultType;

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/onyx/android/sdk/universal/editor/data/NoteImportArgs;->setDeleteSourceOnImported(Z)V

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->INSTANCE:Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-static {p0, v0, p2, p1, p2}, Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;->importDocuments$default(Lcom/onyx/galaxy/note/category/data/DocCollectionBundle;Ljava/util/List;Lcom/onyx/android/sdk/data/NoteCreateFrom;ILjava/lang/Object;)V

    return-void
.end method

.method public final y()Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;

    invoke-direct {v3, p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$k;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$l;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;

    invoke-direct {v3, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$m;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    sget-object v3, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v4, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$n;

    invoke-direct {v4, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$n;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v4, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$o;

    invoke-direct {v4, p0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$o;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;)V

    invoke-virtual {v2, v4}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    invoke-virtual {v3}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$p;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$q;

    invoke-direct {v3, p0, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$q;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$r;

    invoke-direct {v2, p0, v0}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$r;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final z(Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/category/data/NoteSelectType;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/category/data/NotePageBean;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;->z0:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/onyx/galaxy/note/category/data/FilterInfo;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/category/data/FilterInfo;->getQueryArgs()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;->clone()Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, p1}, Lcom/onyx/galaxy/note/common/extension/NoteQueryArgsKt;->andWithSelectType(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;Lcom/onyx/galaxy/note/category/data/NoteSelectType;)Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s;

    invoke-direct {v3, v1}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$s;-><init>(Lcom/onyx/android/sdk/data/couchbase/CBQueryArgs;)V

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v1, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->INSTANCE:Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v3

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v3, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$t;

    invoke-direct {v3, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$t;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/onyx/galaxy/note/common/data/NoteTreeBundle;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$u;

    invoke-direct {v1, p0, v0, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$u;-><init>(Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel;Lcom/onyx/galaxy/note/category/data/FilterInfo;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$v;

    invoke-direct {p1, v2}, Lcom/onyx/galaxy/note/category/viewmodel/NoteListViewModel$v;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
