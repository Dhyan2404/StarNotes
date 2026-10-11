.class public interface abstract Lcom/onyx/android/sdk/data/account/CloudAccountService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;,
        Lcom/onyx/android/sdk/data/account/CloudAccountService$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u0000 \u0099\u00012\u00020\u0001:\u0002\u0099\u0001J,\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\'J2\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u0010\u001a\u0004\u0018\u00010\u0005H\'J,\u0010\u0011\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\u0008\u0001\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0001\u0010\u0015\u001a\u0004\u0018\u00010\u0005H\'J\u001e\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\'J \u0010\u0019\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\'J8\u0010\u001c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001d0\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u001e\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0005H\'J\u001e\u0010 \u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020!0\t0\u00032\u0008\u0008\u0001\u0010\"\u001a\u00020#H\'J,\u0010$\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020%0\t0\u00032\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u0005H\'J \u0010\'\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\u0008\u0008\u0001\u0010(\u001a\u00020)H\'J\u001e\u0010*\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\t0\u00032\u0008\u0008\u0001\u0010(\u001a\u00020,H\'J \u0010-\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\u0008\u0008\u0001\u0010(\u001a\u00020.H\'J \u0010/\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u00032\u0008\u0008\u0001\u0010(\u001a\u000200H\'J\u001e\u00101\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020+0\t0\u00032\u0008\u0008\u0001\u0010(\u001a\u000202H\'J,\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002040\t0\u00032\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u00106\u001a\u0004\u0018\u00010\u0005H\'J8\u00107\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000109080\u00032\n\u0008\u0001\u0010:\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u0005H\'J\u0016\u0010<\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t0\u0003H\'J \u0010=\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u0005080\u00032\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u0005H\'J,\u0010>\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010?\u001a\u0004\u0018\u00010\u0005H\'J\u001e\u0010@\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020AH\'J\u001e\u0010B\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\'J\u001e\u0010C\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020DH\'J>\u0010E\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020G0F0\t0\u00032\n\u0008\u0003\u0010H\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010I\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010J\u001a\u0004\u0018\u00010\u0005H\'J\u0014\u0010K\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020L0\t0\u0003H\'JL\u0010M\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020N0\t0\u00032\n\u0008\u0003\u0010H\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010I\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010J\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010O\u001a\u00020\u00052\u0008\u0008\u0001\u0010P\u001a\u00020\u0005H\'J\u0014\u0010Q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020R0\t0\u0003H\'J\u001a\u0010S\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\'J,\u0010U\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010V\u001a\u0004\u0018\u00010WH\'J,\u0010X\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Y0\t0\u00032\n\u0008\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010[\u001a\u0004\u0018\u00010\u0005H\'J\u001e\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020]0\t0\u00032\u0008\u0008\u0001\u0010^\u001a\u00020_H\'J\u0014\u0010`\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020a0\t0\u0003H\'J\u0014\u0010b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020c0\t0\u0003H\'J \u0010d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\'J,\u0010e\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010?\u001a\u0004\u0018\u00010\u0005H\'J\u001e\u0010f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0008\u0008\u0001\u0010g\u001a\u00020hH\'J\u001e\u0010i\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0008\u0008\u0001\u0010g\u001a\u00020jH\'J\u001e\u0010k\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0008\u0008\u0001\u0010g\u001a\u00020lH\'J\u001e\u0010m\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0008\u0008\u0001\u0010g\u001a\u00020nH\'J,\u0010o\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\u0016\u0008\u0001\u0010p\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u000509H\'J4\u0010q\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0001\u0010&\u001a\u00020\u00052\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u0005H\'J \u0010r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\'J\u0014\u0010s\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020t0\t0\u0003H\'J \u0010u\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u001a\u001a\u0004\u0018\u00010vH\'J \u0010w\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\'J>\u0010x\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H\'J,\u0010z\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010{\u001a\u0004\u0018\u00010\u0005H\'JD\u0010z\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020Y0\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010\u000f\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010|\u001a\u0004\u0018\u00010\u0005H\'J,\u0010}\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H\'J/\u0010~\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00032\u0019\u0008\u0001\u0010(\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\t\u0012\u00070\u0001\u00a2\u0006\u0002\u0008\u007f09H\'J\u001f\u0010\u0080\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0018H\'J.\u0010\u0081\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u000b\u0008\u0001\u0010\u001a\u001a\u0005\u0018\u00010\u0082\u0001H\'J#\u0010\u0083\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u00032\u000c\u0008\u0001\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\'J5\u0010\u0086\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010?\u001a\u0004\u0018\u00010\u00052\u000c\u0008\u0001\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\'J(\u0010\u0087\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010Z\u001a\u0004\u0018\u00010\u00052\u000b\u0008\u0001\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005H\'J?\u0010\u0089\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010&\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010$\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010y\u001a\u0004\u0018\u00010\u0005H\'J#\u0010\u008a\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00120\t0\u00032\u000c\u0008\u0001\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u008c\u0001H\'J\u001b\u0010\u008d\u0001\u001a\u0008\u0012\u0004\u0012\u00020T0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\'J\u001f\u0010\u008e\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u0005H\'J*\u0010\u008f\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\t\u0008\u0001\u0010\u0090\u0001\u001a\u00020\u00052\u0008\u0008\u0001\u0010{\u001a\u00020\u0005H\'J-\u0010\u0091\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\n\u0008\u0001\u0010[\u001a\u0004\u0018\u00010\u0005H\'J&\u0010\u0092\u0001\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\t0\u00032\t\u0008\u0001\u0010\u0017\u001a\u00030\u0093\u0001H\'J \u0010\u0094\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\t\u0008\u0001\u0010\u0017\u001a\u00030\u0093\u0001H\'J,\u0010\u0095\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00010\t0\u00032\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u00052\t\u0008\u0001\u0010\u0017\u001a\u00030\u0093\u0001H\'J!\u0010\u0096\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020G0\t0\u00032\n\u0008\u0001\u0010\u0097\u0001\u001a\u00030\u0098\u0001H\'R \u0010\u0002\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u00038gX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u009a\u0001"
    }
    d2 = {
        "Lcom/onyx/android/sdk/data/account/CloudAccountService;",
        "",
        "booxAppUpdateInfo",
        "Lretrofit2/Call;",
        "Lcom/onyx/android/sdk/data/account/bean/ResultData;",
        "",
        "getBooxAppUpdateInfo",
        "()Lretrofit2/Call;",
        "addChild",
        "Lcom/onyx/android/sdk/data/account/bean/DataResponse;",
        "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
        "token",
        "nickname",
        "bindAccount",
        "Lcom/onyx/android/sdk/data/account/bean/AccountProfile;",
        "type",
        "profile",
        "bindDevice",
        "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
        "device",
        "Lcom/onyx/android/sdk/data/account/bean/Device;",
        "sessionToken",
        "bindHuawei",
        "verifyArgs",
        "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
        "bindPhoneOrEmail",
        "requestBody",
        "Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;",
        "bindWechat",
        "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
        "code",
        "state",
        "checkAccountStatus",
        "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusData;",
        "args",
        "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;",
        "checkCode",
        "Lcom/onyx/android/sdk/data/account/bean/TokenCheckResult;",
        "phoneOrEmail",
        "checkEmailBindState",
        "body",
        "Lcom/onyx/android/sdk/data/account/bean/EmailBindStateCheckArgs;",
        "checkFormat",
        "Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;",
        "Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;",
        "checkIn",
        "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
        "checkPhoneBindState",
        "Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;",
        "checkPhoneFormat",
        "Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;",
        "checkPhoneOrEmail",
        "Lcom/onyx/android/sdk/data/account/bean/CheckPhoneOrEmailBody;",
        "phone",
        "email",
        "checkQrCodeLogin",
        "Lcom/onyx/android/sdk/data/account/bean/ResponseData;",
        "",
        "qrcodeId",
        "clientType",
        "commitHWRActivationLog",
        "createLoginQrCode",
        "deleteChild",
        "id",
        "destroyGoogle",
        "Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;",
        "destroyHuawei",
        "destroyMicrosoft",
        "Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;",
        "fetchQuotas",
        "",
        "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
        "category",
        "subCategory",
        "itemId",
        "fetchQuotasSecret",
        "Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;",
        "fetchQuotasUsageDetail",
        "Lcom/onyx/android/sdk/data/account/bean/QuotaUsageDetailData;",
        "page",
        "pageSize",
        "fetchServerTimestamp",
        "Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;",
        "fixStorageCapacity",
        "Lokhttp3/ResponseBody;",
        "forgetPassword",
        "forgetArgs",
        "Lcom/onyx/android/sdk/data/account/bean/PasswordForgetArgs;",
        "getDevicePushMessage",
        "Lcom/onyx/android/sdk/data/account/bean/DevicePushBean;",
        "mac",
        "action",
        "getUserStorageLeft",
        "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
        "recalculate",
        "",
        "loadAccountPermissions",
        "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionData;",
        "loadAuthMethod",
        "Lcom/onyx/android/sdk/data/account/bean/ChannelAuthData;",
        "loadUserInfo",
        "logInByChild",
        "logInByGoogleAuth",
        "params",
        "Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;",
        "logInByHuaweiAuth",
        "Lcom/onyx/android/sdk/data/account/bean/HuaweiAuthParams;",
        "logInByMicrosoftAuth",
        "Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;",
        "logInByPassword",
        "Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;",
        "logInByPhoneOrEmail",
        "map",
        "logOffByPhoneOrEmail",
        "logout",
        "queryHWRActivationState",
        "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;",
        "rebindPhoneOrEmail",
        "Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;",
        "refreshToken",
        "removePhoneOrEmail",
        "areaCode",
        "resetPassword",
        "password",
        "sendTo",
        "sendPhoneOrEmailCode",
        "sendVerifyCode",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "unbindHuawei",
        "unbindPhoneOrEmail",
        "Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;",
        "updateAccountInfo",
        "accountInfoBean",
        "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;",
        "updateChildAccountInfo",
        "updateDeviceLockState",
        "lock",
        "updatePhoneOrEmail",
        "updateUserAvatar",
        "file",
        "Lokhttp3/MultipartBody$Part;",
        "userFlush",
        "verifyByHuawei",
        "verifyByPassword",
        "username",
        "wechatGetQr",
        "wechatQrLogin",
        "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;",
        "wechatVerifyWithApp",
        "wechatVerifyWithQr",
        "withholdQuotas",
        "data",
        "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;",
        "Companion",
        "sdk-data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_EMAIL:Ljava/lang/String; = "email"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_PHONE:Ljava/lang/String; = "phone"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERIFY_TYPE_SENSELESS:Ljava/lang/String; = "nvc_register_h5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VERIFY_TYPE_SLIDE:Ljava/lang/String; = "nc_register_h5"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;->$$INSTANCE:Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;

    sput-object v0, Lcom/onyx/android/sdk/data/account/CloudAccountService;->Companion:Lcom/onyx/android/sdk/data/account/CloudAccountService$Companion;

    return-void
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "nickname"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/add/child"
    .end annotation
.end method

.method public abstract bindAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "profile"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountProfile;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/ref/profile"
    .end annotation
.end method

.method public abstract bindDevice(Lcom/onyx/android/sdk/data/account/bean/Device;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/Device;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/Device;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/device"
    .end annotation
.end method

.method public abstract bindHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/huawei/bindViaCode"
    .end annotation
.end method

.method public abstract bindPhoneOrEmail(Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/BindPhoneOrEmailArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/bindAssociatedAccount"
    .end annotation
.end method

.method public abstract bindWechat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "code"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "state"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/common/data/ResultCode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "passport/wechat/bind"
    .end annotation
.end method

.method public abstract checkAccountStatus(Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CheckAccountStatusData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/checkStatus"
    .end annotation
.end method

.method public abstract checkCode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mobi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenCheckResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/checkCode"
    .end annotation
.end method

.method public abstract checkEmailBindState(Lcom/onyx/android/sdk/data/account/bean/EmailBindStateCheckArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/EmailBindStateCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/EmailBindStateCheckArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "validation/checkMailAddressBoundStatus"
    .end annotation
.end method

.method public abstract checkFormat(Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/EmailFormatCheckArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "validation/checkMailAddressFormat"
    .end annotation
.end method

.method public abstract checkIn(Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/CheckInRecord;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "checkIn"
    .end annotation
.end method

.method public abstract checkPhoneBindState(Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/PhoneBindStateCheckArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "validation/checkPhoneNumberBoundStatus"
    .end annotation
.end method

.method public abstract checkPhoneFormat(Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/PhoneFormatCheckArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/FormatCheckResult;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "validation/checkPhoneNumberFormat"
    .end annotation
.end method

.method public abstract checkPhoneOrEmail(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "email"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CheckPhoneOrEmailBody;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/checkPhoneOrEmail"
    .end annotation
.end method

.method public abstract checkQrCodeLogin(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "qrcodeId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "clientType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResponseData<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "auth/qrcode/check"
    .end annotation
.end method

.method public abstract commitHWRActivationLog()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "engine/neatHandwriting/activeLog"
    .end annotation
.end method

.method public abstract createLoginQrCode(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "clientType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResponseData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "auth/qrcode/create"
    .end annotation
.end method

.method public abstract deleteChild(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "childrenId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/del/child"
    .end annotation
.end method

.method public abstract destroyGoogle(Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/GoogleVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/google/destroyViaToken"
    .end annotation
.end method

.method public abstract destroyHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/huawei/destroyViaCode"
    .end annotation
.end method

.method public abstract destroyMicrosoft(Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/MicrosoftVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/microsoft/destroyViaToken"
    .end annotation
.end method

.method public abstract fetchQuotas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "category"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "subCategory"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "itemId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/quotas"
    .end annotation
.end method

.method public abstract fetchQuotasSecret()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/QuotaSecret;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/quotas/secret"
    .end annotation
.end method

.method public abstract fetchQuotasUsageDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "category"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "subCategory"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "itemId"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "page"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "pageSize"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/QuotaUsageDetailData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/quotas/usageDetails"
    .end annotation
.end method

.method public abstract fetchServerTimestamp()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/ServerTimeBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/common/serverTime"
    .end annotation
.end method

.method public abstract fixStorageCapacity(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/v2/me/calibration/size"
    .end annotation
.end method

.method public abstract forgetPassword(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/PasswordForgetArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/account/bean/PasswordForgetArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/account/bean/PasswordForgetArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/forget"
    .end annotation
.end method

.method public abstract getBooxAppUpdateInfo()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "appVersions/android/version"
    .end annotation
.end method

.method public abstract getDevicePushMessage(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mac"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "action"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/DevicePushBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "devices/action/state"
    .end annotation
.end method

.method public abstract getUserStorageLeft(Z)Lretrofit2/Call;
    .param p1    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "recalculate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/UserStorageBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "statistics/user/left"
    .end annotation
.end method

.method public abstract loadAccountPermissions()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountPermissionData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/permissions"
    .end annotation
.end method

.method public abstract loadAuthMethod()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/ChannelAuthData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "users/authMethod"
    .end annotation
.end method

.method public abstract loadUserInfo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "app/users/me"
    .end annotation
.end method

.method public abstract logInByChild(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "childrenId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/child/login"
    .end annotation
.end method

.method public abstract logInByGoogleAuth(Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/GoogleAuthParams;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/google/loginViaToken"
    .end annotation
.end method

.method public abstract logInByHuaweiAuth(Lcom/onyx/android/sdk/data/account/bean/HuaweiAuthParams;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiAuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/HuaweiAuthParams;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/huawei/loginViaCode"
    .end annotation
.end method

.method public abstract logInByMicrosoftAuth(Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/MicrosoftAuthParams;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/microsoft/loginViaToken"
    .end annotation
.end method

.method public abstract logInByPassword(Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/LoginByPasswordParams;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/login"
    .end annotation
.end method

.method public abstract logInByPhoneOrEmail(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/FieldMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "app/users/fastAuth"
    .end annotation
.end method

.method public abstract logOffByPhoneOrEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mobi"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/destroy/account"
    .end annotation
.end method

.method public abstract logout(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "devices/logout"
    .end annotation
.end method

.method public abstract queryHWRActivationState()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/HWRActivationState;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "engine/neatHandwriting/activeState"
    .end annotation
.end method

.method public abstract rebindPhoneOrEmail(Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/RebindPhoneOrEmailArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/rebindAssociatedAccount"
    .end annotation
.end method

.method public abstract refreshToken(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "token/refresh"
    .end annotation
.end method

.method public abstract removePhoneOrEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mobi"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "area_code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/removePhoneOrEmail"
    .end annotation
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "password"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/reset"
    .end annotation
.end method

.method public abstract resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "mac"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "sendTo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/DevicePushBean;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "devices/reset/password"
    .end annotation
.end method

.method public abstract sendPhoneOrEmailCode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mobi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "area_code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/sendVerifyCode"
    .end annotation
.end method

.method public abstract sendVerifyCode(Ljava/util/Map;)Lretrofit2/Call;
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/ResultData<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "app/users/sendVerifyCode"
    .end annotation
.end method

.method public abstract unbindHuawei(Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/HuaweiVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/huawei/unbindViaCode"
    .end annotation
.end method

.method public abstract unbindPhoneOrEmail(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/account/bean/UnbindPhoneOrEmailArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/unbindAssociatedAccount"
    .end annotation
.end method

.method public abstract updateAccountInfo(Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "users/updateInfo"
    .end annotation
.end method

.method public abstract updateChildAccountInfo(Ljava/lang/String;Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/account/bean/UpdateAccountInfoBean;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "users/child/{id}/info"
    .end annotation
.end method

.method public abstract updateDeviceLockState(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mac"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "lock"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "devices/lock/state"
    .end annotation
.end method

.method public abstract updatePhoneOrEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "mobi"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "area_code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/updatePhoneOrEmail"
    .end annotation
.end method

.method public abstract updateUserAvatar(Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;
    .param p1    # Lokhttp3/MultipartBody$Part;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/MultipartBody$Part;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/CloudOnyxAccount;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/avatar"
    .end annotation
.end method

.method public abstract userFlush(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cloud/docs/test/userFlush"
    .end annotation
.end method

.method public abstract verifyByHuawei(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/huawei/verifyViaCode"
    .end annotation
.end method

.method public abstract verifyByPassword(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "user"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Field;
            value = "pass"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "users/verifyViaPassword"
    .end annotation
.end method

.method public abstract wechatGetQr(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Query;
            value = "action"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "passport/wechat/qrcode"
    .end annotation
.end method

.method public abstract wechatQrLogin(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/TokenBean;",
            ">;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/wechat/verifyWithCode"
    .end annotation
.end method

.method public abstract wechatVerifyWithApp(Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/wechat/verifyWithApp"
    .end annotation
.end method

.method public abstract wechatVerifyWithQr(Ljava/lang/String;Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation

        .annotation runtime Lretrofit2/http/Header;
            value = "authorization"
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/data/account/bean/WechatVerifyArgs;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "passport/wechat/verifyWithCode"
    .end annotation
.end method

.method public abstract withholdQuotas(Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;)Lretrofit2/Call;
    .param p1    # Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation

        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/data/account/bean/WithHoldQuotasData;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/onyx/android/sdk/data/account/bean/DataResponse<",
            "Lcom/onyx/android/sdk/data/account/bean/AccountQuotaItemData;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "app/quotas"
    .end annotation
.end method
