.class public final Lcom/onyx/android/sdk/neopdf/NeoPdfNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeoPdfNative.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,278:1\n1855#2,2:279\n37#3,2:281\n*S KotlinDebug\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n*L\n80#1:279,2\n91#1:281,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0014\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008/\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008&\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u000b\u0008\u0002\u00a2\u0006\u0006\u0008\u008d\u0002\u0010\u008e\u0002J1\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0082 J\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0007J.\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tJ\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012J\u0016\u0010\u0015\u001a\u00020\u000f2\u000e\u0008\u0002\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012J\u0006\u0010\u0016\u001a\u00020\u000fJ\u001e\u0010\u0019\u001a\u00020\u000b2\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\t\u0010\u001b\u001a\u00020\u000bH\u0086 J\u0011\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 J\u0019\u0010 \u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001eH\u0086 J-\u0010&\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020#H\u0086 J-\u0010)\u001a\u00020%2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010(\u001a\u0004\u0018\u00010\'2\u0008\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010$\u001a\u00020#H\u0086 J\u0011\u0010*\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001b\u0010+\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0086 J%\u0010,\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010!\u001a\u0004\u0018\u00010\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0086 J=\u0010/\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\n\u001a\u0004\u0018\u00010\"2\u0006\u0010-\u001a\u00020\u00042\u0006\u0010.\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0086 J\u001b\u00102\u001a\u0004\u0018\u0001012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J1\u00107\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u0002032\u0006\u00106\u001a\u000201H\u0086 J)\u00108\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0086 J\u0011\u00109\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001f\u0010<\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u000c\u0010;\u001a\u0008\u0012\u0004\u0012\u00020:0\u0012H\u0086 J\u0011\u0010=\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001e\u0010>\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 \u00a2\u0006\u0004\u0008>\u0010?J\u0011\u0010@\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u0011\u0010A\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u0019\u0010C\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\'\u0010F\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000c\u0010E\u001a\u0008\u0012\u0004\u0012\u00020D0\u0012H\u0086 J!\u0010H\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010G\u001a\u000201H\u0086 J\u0019\u0010I\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J!\u0010K\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010J\u001a\u00020\u000bH\u0086 J\u0019\u0010L\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u0019\u0010M\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u0019\u0010O\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u0002H\u0086 J!\u0010Q\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0086 J\u0019\u0010R\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u0002H\u0086 J!\u0010S\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010N\u001a\u00020\u00022\u0006\u0010P\u001a\u00020\u0002H\u0086 J\u0019\u0010U\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 J\u0019\u0010V\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 J&\u0010X\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u000c\u0010W\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0004\u0008X\u0010YJ\u0019\u0010[\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010Z\u001a\u000203H\u0086 J\u0019\u0010]\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\\\u001a\u00020\u0004H\u0086 J\u0019\u0010^\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0086 J\u0019\u0010_\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010T\u001a\u00020\u000bH\u0086 JS\u0010f\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0006\u0010c\u001a\u00020\u00072\u0008\u0010e\u001a\u0004\u0018\u00010dH\u0086 J\u001b\u0010i\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010h\u001a\u0004\u0018\u00010gH\u0086 J)\u0010l\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010j\u001a\u00020g2\u0006\u0010k\u001a\u00020\u00072\u0006\u0010G\u001a\u00020\u0007H\u0086 J\u0019\u0010n\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010m\u001a\u00020%H\u0086 J&\u0010p\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u000c\u0010o\u001a\u0008\u0012\u0004\u0012\u00020g0\u0017H\u0086 \u00a2\u0006\u0004\u0008p\u0010qJ/\u0010t\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J\u001b\u0010v\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010u\u001a\u00020%H\u0086 J)\u0010y\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010u\u001a\u00020%2\u0006\u0010w\u001a\u00020\u00072\u0006\u0010x\u001a\u00020\u0002H\u0086 J3\u0010z\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\u0006\u0010`\u001a\u0002032\u0006\u0010a\u001a\u000203H\u0086 J1\u0010{\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010r\u001a\u00020\u000b2\u0006\u0010`\u001a\u0002032\u0006\u0010a\u001a\u000203H\u0086 JB\u0010~\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0010\u0010s\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010|\u0018\u00010\u00122\u000e\u0010}\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0017H\u0086 \u00a2\u0006\u0004\u0008~\u0010\u007fJ)\u0010\u0081\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u0080\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J(\u0010\u0082\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J(\u0010\u0083\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J1\u0010\u0085\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00122\u0007\u0010\u0084\u0001\u001a\u00020\u0007H\u0086 J\u0081\u0001\u0010\u008d\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u0086\u0001\u001a\u00020\u00072\u0007\u0010\u0087\u0001\u001a\u00020\u00072\u0007\u0010\u0088\u0001\u001a\u00020\u00072\u0007\u0010\u0089\u0001\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u000b2\u0007\u0010\u008c\u0001\u001a\u00020\u0001H\u0086 J]\u0010\u0090\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u008e\u0001\u001a\u00020\u00072\u0007\u0010\u008f\u0001\u001a\u00020\u00072\u0007\u0010\u008c\u0001\u001a\u00020\u0001H\u0086 Jt\u0010\u0095\u0001\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0006\u0010`\u001a\u00020\u00072\u0006\u0010a\u001a\u00020\u00072\u0006\u00104\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u00072\u0006\u0010b\u001a\u00020\u00072\u0007\u0010\u0091\u0001\u001a\u00020\u00022\u0007\u0010\u0092\u0001\u001a\u00020\u000b2\u0007\u0010\u0093\u0001\u001a\u00020\u000b2\u0007\u0010\u0094\u0001\u001a\u00020\u00072\u000c\u0010s\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J,\u0010\u0097\u0001\u001a\u00020\u00012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u00072\u0007\u0010\u008a\u0001\u001a\u00020\u0001H\u0086 J+\u0010\u0098\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0004H\u0086 \u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J*\u0010\u009b\u0001\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u009c\u0001J+\u0010\u009d\u0001\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0086 \u00a2\u0006\u0006\u0008\u009d\u0001\u0010\u0099\u0001J*\u0010\u009f\u0001\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\u00072\r\u0010\u009e\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u009f\u0001\u0010\u009c\u0001J\u001c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J#\u0010\u00a2\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010\u00a1\u0001\u001a\u00020\u0002H\u0086 J+\u0010\u00a3\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0007\u0010\u00a1\u0001\u001a\u00020\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0086 J5\u0010\u00a4\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\t\u0010\u00a1\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u00104\u001a\u0002032\u0006\u00105\u001a\u000203H\u0086 J\u001a\u0010\u00a5\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J#\u0010\u00a7\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010\u00a6\u0001\u001a\u00020\u0007H\u0086 J#\u0010\u00a8\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u00072\u0007\u0010\u00a6\u0001\u001a\u00020\u0007H\u0086 J\u001a\u0010\u00a9\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u00100\u001a\u00020\u0007H\u0086 J\u001a\u0010\u00aa\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J&\u0010\u00ad\u0001\u001a\u0005\u0018\u00010\u00ac\u00012\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00ab\u0001\u001a\u00020\u0004H\u0086 J\u001a\u0010\u00ae\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J=\u0010\u00b2\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00af\u0001\u001a\u00020\u00022\u0007\u0010\u00b0\u0001\u001a\u00020\u00022\u0006\u0010e\u001a\u00020d2\u0007\u0010\u00b1\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010\u00b3\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u001a\u0010\u00b4\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J\u001c\u0010\u00b7\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0008\u0010\u00b6\u0001\u001a\u00030\u00b5\u0001H\u0086 J\u0012\u0010\u00b8\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u0007H\u0086 J\u001c\u0010\u00b9\u0001\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J#\u0010\u00bb\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00ba\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010\u00bc\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J8\u0010\u00bf\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u00bd\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u00122\r\u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0012H\u0086 J+\u0010\u00c3\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0007\u0010\u00c0\u0001\u001a\u00020%2\u000e\u0010\u00c2\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c1\u00010\u0012H\u0086 J8\u0010\u00c5\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00c5\u0001\u0010\u00c6\u0001J$\u0010\u00c9\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00c8\u0001\u001a\u00030\u00c7\u0001H\u0086 J$\u0010\u00ca\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00c8\u0001\u001a\u00030\u00c7\u0001H\u0086 J#\u0010\u00cc\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00cb\u0001\u001a\u00020\u0002H\u0086 J#\u0010\u00ce\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00cd\u0001\u001a\u00020\u0002H\u0086 J2\u0010\u00cf\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00cf\u0001\u0010\u00d0\u0001J8\u0010\u00d2\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00172\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u00d1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00d2\u0001\u0010\u00c6\u0001J6\u0010\u00d5\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00b6\u0001\u001a\u00030\u00b5\u00012\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u00d4\u0001\u001a\u00030\u00d3\u0001H\u0086 JE\u0010\u00d6\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010\u00b6\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b5\u00010\u00172\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u00d4\u0001\u001a\u00030\u00d3\u0001H\u0086 \u00a2\u0006\u0006\u0008\u00d6\u0001\u0010\u00d7\u0001J$\u0010\u00d8\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00b6\u0001\u001a\u00030\u00b5\u0001H\u0086 J3\u0010\u00d9\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010\u00be\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b5\u00010\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00d9\u0001\u0010\u00da\u0001J.\u0010\u00dd\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00b6\u0001\u001a\u00030\u00b5\u00012\u0008\u0010\u00dc\u0001\u001a\u00030\u00db\u0001H\u0086 J3\u0010\u00de\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u000e\u0010\u00be\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b5\u00010\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00de\u0001\u0010\u00da\u0001J$\u0010\u00e0\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00df\u0001\u001a\u00030\u00d3\u0001H\u0086 J#\u0010\u00e1\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00d1\u0001\u001a\u00020\u0002H\u0086 J#\u0010\u00e2\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00cd\u0001\u001a\u00020\u0002H\u0086 J2\u0010\u00e3\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\r\u0010\u009a\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0017H\u0086 \u00a2\u0006\u0006\u0008\u00e3\u0001\u0010\u00d0\u0001J#\u0010\u00e5\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0007\u0010\u00e4\u0001\u001a\u00020\u0002H\u0086 J\u001a\u0010\u00e6\u0001\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0007H\u0086 J.\u0010\u00eb\u0001\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u00072\u0008\u0010\u00e8\u0001\u001a\u00030\u00e7\u00012\u0008\u0010\u00ea\u0001\u001a\u00030\u00e9\u0001H\u0086 R\u0017\u0010\u00ec\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ec\u0001\u0010\u00ed\u0001R\u0017\u0010\u00ee\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ee\u0001\u0010\u00ed\u0001R\u0017\u0010\u00ef\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ef\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f0\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f0\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f1\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f1\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f2\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f2\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f3\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f3\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f4\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f4\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f5\u0001\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f5\u0001\u0010\u00ed\u0001R\u0017\u0010\u00f6\u0001\u001a\u00020\u00028\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f6\u0001\u0010\u00f7\u0001R\u0017\u0010\u00f8\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00f8\u0001\u0010\u00f9\u0001R\u0017\u0010\u00fa\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00fa\u0001\u0010\u00f9\u0001R\u0017\u0010\u00fb\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00fb\u0001\u0010\u00f9\u0001R\u0017\u0010\u00fc\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00f9\u0001R\u0017\u0010\u00fd\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00fd\u0001\u0010\u00f9\u0001R\u0017\u0010\u00fe\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00f9\u0001R\u0017\u0010\u00ff\u0001\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u00ff\u0001\u0010\u00f9\u0001R\u0017\u0010\u0080\u0002\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u0080\u0002\u0010\u00f9\u0001R\u0017\u0010\u0081\u0002\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u0081\u0002\u0010\u00f9\u0001R\u0017\u0010\u0082\u0002\u001a\u00020%8\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u0082\u0002\u0010\u00f9\u0001R\u0017\u0010\u0083\u0002\u001a\u00020\u00078\u0006X\u0086T\u00a2\u0006\u0008\n\u0006\u0008\u0083\u0002\u0010\u00ed\u0001R\u0019\u0010\u0085\u0002\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0084\u0002\u0010\u00ed\u0001R)\u0010\u008c\u0002\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0018\n\u0006\u0008\u0086\u0002\u0010\u0087\u0002\u001a\u0006\u0008\u0088\u0002\u0010\u0089\u0002\"\u0006\u0008\u008a\u0002\u0010\u008b\u0002\u00a8\u0006\u008f\u0002"
    }
    d2 = {
        "Lcom/onyx/android/sdk/neopdf/NeoPdfNative;",
        "",
        "",
        "srcPath",
        "",
        "pages",
        "dstPath",
        "",
        "dstPageIndex",
        "Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;",
        "options",
        "",
        "nativeImportDocumentPages",
        "nextId",
        "level",
        "",
        "setLogLevel",
        "importDocumentPages",
        "",
        "defaultFontDirs",
        "fontFolders",
        "ensureInitialized",
        "destroyLibrary",
        "",
        "fontFolderArray",
        "nativeInitLibrary",
        "([Ljava/lang/String;)Z",
        "nativeDestroyLibrary",
        "nativeSetLogLevel",
        "id",
        "Lcom/onyx/android/sdk/neopdf/PdfCallback;",
        "callback",
        "nativeSetCallback",
        "path",
        "Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;",
        "Lcom/onyx/android/sdk/neopdf/PdfOpenResult;",
        "result",
        "",
        "nativeOpenDocument",
        "Lcom/onyx/android/sdk/neopdf/PdfFileStream;",
        "stream",
        "nativeOpenDocumentStream",
        "nativeCreateNewDocument",
        "nativeSaveDocument",
        "nativeSaveDocumentAs",
        "srcPages",
        "objNumberMap",
        "nativeImportPages",
        "pageIndex",
        "",
        "nativeGetPageContentMatrix",
        "",
        "width",
        "height",
        "matrix",
        "nativeResizePageWithContent",
        "nativeExportPages",
        "nativeCloseDocument",
        "Lcom/onyx/android/sdk/neopdf/PdfDocumentVersion;",
        "versions",
        "nativeRetrieveDocumentVersions",
        "nativePageCount",
        "nativeGetPageLabels",
        "(I)[Ljava/lang/String;",
        "nativeBeginLookUpPageAnnotData",
        "nativeEndLookUpPageAnnotData",
        "page",
        "nativeLookUpPageAnnotData",
        "Lcom/onyx/android/sdk/neopdf/PdfFontInfo;",
        "fonts",
        "nativeGetPageFonts",
        "size",
        "nativePageSize",
        "nativeIsTextPage",
        "includeArtifacts",
        "nativeGetPageText",
        "nativeIsComplexPage",
        "nativeIsOnyxPage",
        "tag",
        "nativeMetadata",
        "value",
        "nativeSetMetadata",
        "nativeGetOnyxTagMetadata",
        "nativeSetOnyxTagMetadata",
        "render",
        "nativeSetRenderAnnotations",
        "nativeSetRenderOnyxAnnotations",
        "objIdArray",
        "nativeSetAnnotRenderIgnoreList",
        "(I[Ljava/lang/String;)Z",
        "gamma",
        "nativeSetTextGamma",
        "table",
        "nativeSetTextGammaTable",
        "nativeSetFontEmboldenLevel",
        "nativeSetRenderFormFields",
        "x",
        "y",
        "rotation",
        "flags",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "nativeRenderPage",
        "Lcom/onyx/android/sdk/neopdf/PdfTocEntry;",
        "root",
        "nativeGetTableOfContent",
        "parent",
        "start",
        "nativeLoadTocChildren",
        "entryPtr",
        "nativeGetTocEntryDestPage",
        "rootEntries",
        "nativeSetTableOfContent",
        "(I[Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z",
        "acceptOnyxLink",
        "list",
        "nativeGetPageLinks",
        "linkPtr",
        "nativeGetLinkDest",
        "linkType",
        "dest",
        "nativeUpdateLinkDest",
        "nativeGetLinkDestAtPoint",
        "nativeGetLinkPageAtPoint",
        "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;",
        "ignoreObjIdList",
        "nativeGetPageRichMedias",
        "(IILjava/util/List;[Ljava/lang/String;)Z",
        "fields",
        "nativeLoadFormFields",
        "nativeGetPageTextCharBoxes",
        "nativeGetPageTextRegions",
        "limitSize",
        "nativeGetPageImageRegions",
        "startX",
        "startY",
        "endX",
        "endY",
        "splitter",
        "selectingWord",
        "selection",
        "nativeHitTest",
        "startCharIndex",
        "endCharIndex",
        "nativeSelection",
        "text",
        "caseSensitive",
        "matchWholeWord",
        "contextLength",
        "nativeSearchInPage",
        "sentenceStartIndex",
        "nativeGetSentence",
        "nativeGetPageObjId",
        "(I[I)[Ljava/lang/String;",
        "objIds",
        "nativeGetPageIndexByObjId",
        "(I[Ljava/lang/String;)[I",
        "nativeGetPageIdArray",
        "ids",
        "nativeGetPageIndexById",
        "nativeGetPageId",
        "pageId",
        "nativeSetPageId",
        "nativeAppendPage",
        "nativeInsertPage",
        "nativeRemovePage",
        "dstIndex",
        "nativeMovePage",
        "nativeCopyPage",
        "nativeFlattenPage",
        "nativeGetBackgroundResourceId",
        "pageSize",
        "",
        "nativeGetBackgroundBitmap",
        "nativeGetBackgroundExtraAttr",
        "imageId",
        "resourceId",
        "extraAttr",
        "nativeSetBackground",
        "nativeRemoveBackground",
        "nativeBeginPageBackgroundRender",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;",
        "shape",
        "nativeDrawPageBackgroundShape",
        "nativeEndPageBackgroundRender",
        "nativeGetOnyxBookmark",
        "bookmark",
        "nativeAddOnyxBookmark",
        "nativeRemoveOnyxBookmark",
        "highlights",
        "shapes",
        "nativeGetPageAnnotations",
        "offset",
        "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;",
        "logs",
        "nativeGetPdfAnnotLogs",
        "highlightIdArray",
        "nativeGetHighlightObjId",
        "(II[Ljava/lang/String;)[Ljava/lang/String;",
        "Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;",
        "highlight",
        "nativeWriteHighlight",
        "nativeUpdateHighlight",
        "highlightId",
        "nativeRemoveHighlight",
        "objId",
        "nativeRemoveHighlightByObjId",
        "nativeRemoveHighlights",
        "(II[Ljava/lang/String;)Z",
        "shapeId",
        "nativeGetShapeObjId",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeData;",
        "data",
        "nativeSerializeShapeData",
        "nativeSerializeInkShapesData",
        "(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Lcom/onyx/android/sdk/neopdf/PdfShapeData;)Z",
        "nativeWriteShape",
        "nativeWriteInkShapes",
        "(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z",
        "Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;",
        "updateOptions",
        "nativeUpdateShape",
        "nativeUpdateInkShapes",
        "annotData",
        "nativeWriteShapeByData",
        "nativeRemoveShape",
        "nativeRemoveShapeByObjId",
        "nativeRemoveShapes",
        "layerInfo",
        "nativeUpdatePageLayer",
        "nativeGetPageLayer",
        "Lcom/onyx/android/sdk/neopdf/PdfTextRun;",
        "run",
        "Lcom/onyx/android/sdk/neopdf/PdfTextState;",
        "state",
        "nativeAddPageTextObject",
        "PDF_LOG_LEVEL_NONE",
        "I",
        "PDF_LOG_LEVEL_FATAL",
        "PDF_LOG_LEVEL_ERROR",
        "PDF_LOG_LEVEL_WARNING",
        "PDF_LOG_LEVEL_INFO",
        "PDF_LOG_LEVEL_DEBUG",
        "PDF_LOG_LEVEL_VERBOSE",
        "RENDER_FLAG_NORMAL",
        "RENDER_FLAG_TEXT_NO_ANTIALIAS",
        "INVALID_PAGE_OBJ_ID_PREFIX",
        "Ljava/lang/String;",
        "NO_ERROR",
        "J",
        "ERROR_UNKNOWN",
        "ERROR_FILE_NOT_FOUND",
        "ERROR_FILE_INVALID",
        "ERROR_PASSWORD_INVALID",
        "ERROR_SECURITY",
        "ERROR_PAGE_NOT_FOUND",
        "ERROR_SECURITY_ONYX_DRM",
        "ERROR_SECURITY_ADOBE_DRM",
        "ERROR_JD_DRM_INVALID",
        "IMAGE_REGION_PROCESS_LIMIT",
        "a",
        "sPluginId",
        "b",
        "Z",
        "getLibraryInitialized",
        "()Z",
        "setLibraryInitialized",
        "(Z)V",
        "libraryInitialized",
        "<init>",
        "()V",
        "sdk-neopdf_release"
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
        "SMAP\nNeoPdfNative.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,278:1\n1855#2,2:279\n37#3,2:281\n*S KotlinDebug\n*F\n+ 1 NeoPdfNative.kt\ncom/onyx/android/sdk/neopdf/NeoPdfNative\n*L\n80#1:279,2\n91#1:281,2\n*E\n"
    }
.end annotation


# static fields
.field public static final ERROR_FILE_INVALID:J = 0x3L

.field public static final ERROR_FILE_NOT_FOUND:J = 0x2L

.field public static final ERROR_JD_DRM_INVALID:J = 0x7d0L

.field public static final ERROR_PAGE_NOT_FOUND:J = 0x6L

.field public static final ERROR_PASSWORD_INVALID:J = 0x4L

.field public static final ERROR_SECURITY:J = 0x5L

.field public static final ERROR_SECURITY_ADOBE_DRM:J = 0x3e9L

.field public static final ERROR_SECURITY_ONYX_DRM:J = 0x3e8L

.field public static final ERROR_UNKNOWN:J = 0x1L

.field public static final IMAGE_REGION_PROCESS_LIMIT:I = 0x64

.field public static final INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final INVALID_PAGE_OBJ_ID_PREFIX:Ljava/lang/String; = "pdf-invalid-"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NO_ERROR:J = 0x0L

.field public static final PDF_LOG_LEVEL_DEBUG:I = 0x5

.field public static final PDF_LOG_LEVEL_ERROR:I = 0x2

.field public static final PDF_LOG_LEVEL_FATAL:I = 0x1

.field public static final PDF_LOG_LEVEL_INFO:I = 0x4

.field public static final PDF_LOG_LEVEL_NONE:I = 0x0

.field public static final PDF_LOG_LEVEL_VERBOSE:I = 0x6

.field public static final PDF_LOG_LEVEL_WARNING:I = 0x3

.field public static final RENDER_FLAG_NORMAL:I = 0x0

.field public static final RENDER_FLAG_TEXT_NO_ANTIALIAS:I = 0x1

.field public static a:I

.field public static volatile b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    invoke-direct {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    const-string v1, "engine_sdk"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->defaultFontDirs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->ensureInitialized(Ljava/util/List;)V

    const/4 v0, -0x1

    sput v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ensureInitialized$default(Lcom/onyx/android/sdk/neopdf/NeoPdfNative;Ljava/util/List;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->defaultFontDirs()Ljava/util/List;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->ensureInitialized(Ljava/util/List;)V

    return-void
.end method

.method private final native nativeImportDocumentPages(Ljava/lang/String;[ILjava/lang/String;ILcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
.end method


# virtual methods
.method public final defaultFontDirs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    const-string v2, "fonts"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getAbsolutePath(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p0, "/system/fonts"

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final destroyLibrary()V
    .locals 1

    const-class p0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->nativeDestroyLibrary()Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ensureInitialized(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p0, "fontFolders"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/system/fonts"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-class p1, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    monitor-enter p1

    :try_start_0
    sget-boolean v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p1

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->INSTANCE:Lcom/onyx/android/sdk/neopdf/NeoPdfNative;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->nativeInitLibrary([Ljava/lang/String;)Z

    const/4 p0, 0x1

    sput-boolean p0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0
.end method

.method public final getLibraryInitialized()Z
    .locals 0

    sget-boolean p0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z

    return p0
.end method

.method public final importDocumentPages(Ljava/lang/String;[ILjava/lang/String;ILcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "srcPath"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dstPath"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->nativeImportDocumentPages(Ljava/lang/String;[ILjava/lang/String;ILcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z

    move-result p0

    return p0
.end method

.method public final native nativeAddOnyxBookmark(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeAddPageTextObject(IILcom/onyx/android/sdk/neopdf/PdfTextRun;Lcom/onyx/android/sdk/neopdf/PdfTextState;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfTextRun;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfTextState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeAppendPage(ILjava/lang/String;FF)Z
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeBeginLookUpPageAnnotData(I)V
.end method

.method public final native nativeBeginPageBackgroundRender(II)Z
.end method

.method public final native nativeCloseDocument(I)Z
.end method

.method public final native nativeCopyPage(III)Z
.end method

.method public final native nativeCreateNewDocument(I)Z
.end method

.method public final native nativeDestroyLibrary()Z
.end method

.method public final native nativeDrawPageBackgroundShape(ILcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeEndLookUpPageAnnotData(I)V
.end method

.method public final native nativeEndPageBackgroundRender(I)Z
.end method

.method public final native nativeExportPages(ILjava/lang/String;[ILcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeFlattenPage(II)Z
.end method

.method public final native nativeGetBackgroundBitmap(II[I)[B
    .param p3    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetBackgroundExtraAttr(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetBackgroundResourceId(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetHighlightObjId(II[Ljava/lang/String;)[Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetLinkDest(IJ)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetLinkDestAtPoint(IIZFF)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetLinkPageAtPoint(IIZFF)I
.end method

.method public final native nativeGetOnyxBookmark(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetOnyxTagMetadata(ILjava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageAnnotations(IILjava/util/List;Ljava/util/List;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageContentMatrix(II)[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetPageFonts(IILjava/util/List;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfFontInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageId(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetPageIdArray(I[I)[Ljava/lang/String;
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetPageImageRegions(IILjava/util/List;I)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageIndexById(I[Ljava/lang/String;)[I
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageIndexByObjId(I[Ljava/lang/String;)[I
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageLabels(I)[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageLayer(II)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageLinks(IIZLjava/util/List;)Z
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageObjId(I[I)[Ljava/lang/String;
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeGetPageRichMedias(IILjava/util/List;[Ljava/lang/String;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfRichMediaObject;",
            ">;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageText(IIZ)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetPageTextCharBoxes(IILjava/util/List;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPageTextRegions(IILjava/util/List;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetPdfAnnotLogs(IJLjava/util/List;)Z
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfAnnotLog;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeGetSentence(IIILjava/lang/Object;)Ljava/lang/Object;
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetShapeObjId(II[Ljava/lang/String;)[Ljava/lang/String;
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeGetTableOfContent(ILcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final native nativeGetTocEntryDestPage(IJ)I
.end method

.method public final native nativeHitTest(IIIIIIIIIIILjava/lang/Object;ZLjava/lang/Object;)I
    .param p12    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeImportPages(ILjava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;[I[II)[I
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public final native nativeInitLibrary([Ljava/lang/String;)Z
    .param p1    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeInsertPage(IILjava/lang/String;FF)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final native nativeIsComplexPage(II)Z
.end method

.method public final native nativeIsOnyxPage(II)Z
.end method

.method public final native nativeIsTextPage(II)Z
.end method

.method public final native nativeLoadFormFields(IILjava/util/List;)Z
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeLoadTocChildren(ILcom/onyx/android/sdk/neopdf/PdfTocEntry;II)Z
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeLookUpPageAnnotData(II)Z
.end method

.method public final native nativeMetadata(ILjava/lang/String;)Ljava/lang/String;
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final native nativeMovePage(III)Z
.end method

.method public final native nativeOpenDocument(ILjava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;Lcom/onyx/android/sdk/neopdf/PdfOpenResult;)J
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeOpenDocumentStream(ILcom/onyx/android/sdk/neopdf/PdfFileStream;Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;Lcom/onyx/android/sdk/neopdf/PdfOpenResult;)J
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfFileStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfOpenOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfOpenResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativePageCount(I)I
.end method

.method public final native nativePageSize(II[F)Z
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveBackground(II)Z
.end method

.method public final native nativeRemoveHighlight(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveHighlightByObjId(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveHighlights(II[Ljava/lang/String;)Z
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveOnyxBookmark(II)Z
.end method

.method public final native nativeRemovePage(II)Z
.end method

.method public final native nativeRemoveShape(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveShapeByObjId(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRemoveShapes(II[Ljava/lang/String;)Z
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRenderPage(IIIIIIIILandroid/graphics/Bitmap;)Z
    .param p9    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final native nativeResizePageWithContent(IIFF[F)Z
    .param p5    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeRetrieveDocumentVersions(ILjava/util/List;)Z
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/neopdf/PdfDocumentVersion;",
            ">;)Z"
        }
    .end annotation
.end method

.method public final native nativeSaveDocument(ILcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final native nativeSaveDocumentAs(ILjava/lang/String;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public final native nativeSearchInPage(IIIIIIILjava/lang/String;ZZILjava/util/List;)I
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIII",
            "Ljava/lang/String;",
            "ZZI",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public final native nativeSelection(IIIIIIIIILjava/lang/Object;)I
    .param p10    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSerializeInkShapesData(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Lcom/onyx/android/sdk/neopdf/PdfShapeData;)Z
    .param p3    # [Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/neopdf/PdfShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSerializeShapeData(IILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;Lcom/onyx/android/sdk/neopdf/PdfShapeData;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfSaveOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/android/sdk/neopdf/PdfShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetAnnotRenderIgnoreList(I[Ljava/lang/String;)Z
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetBackground(IILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetCallback(ILcom/onyx/android/sdk/neopdf/PdfCallback;)V
    .param p2    # Lcom/onyx/android/sdk/neopdf/PdfCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetFontEmboldenLevel(II)V
.end method

.method public final native nativeSetLogLevel(I)V
.end method

.method public final native nativeSetMetadata(ILjava/lang/String;Ljava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetOnyxTagMetadata(ILjava/lang/String;Ljava/lang/String;)Z
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetPageId(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetRenderAnnotations(IZ)V
.end method

.method public final native nativeSetRenderFormFields(IZ)Z
.end method

.method public final native nativeSetRenderOnyxAnnotations(IZ)V
.end method

.method public final native nativeSetTableOfContent(I[Lcom/onyx/android/sdk/neopdf/PdfTocEntry;)Z
    .param p2    # [Lcom/onyx/android/sdk/neopdf/PdfTocEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeSetTextGamma(IF)V
.end method

.method public final native nativeSetTextGammaTable(I[I)V
    .param p2    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeUpdateHighlight(IILcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeUpdateInkShapes(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z
    .param p3    # [Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeUpdateLinkDest(IJILjava/lang/String;)Z
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeUpdatePageLayer(IILjava/lang/String;)Z
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeUpdateShape(IILcom/onyx/android/sdk/neopdf/PdfShapeInfo;Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/onyx/android/sdk/neopdf/PdfShapeUpdateOptions;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeWriteHighlight(IILcom/onyx/android/sdk/neopdf/PdfHighlightInfo;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfHighlightInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeWriteInkShapes(II[Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z
    .param p3    # [Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeWriteShape(IILcom/onyx/android/sdk/neopdf/PdfShapeInfo;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final native nativeWriteShapeByData(IILcom/onyx/android/sdk/neopdf/PdfShapeData;)Z
    .param p3    # Lcom/onyx/android/sdk/neopdf/PdfShapeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final declared-synchronized nextId()I
    .locals 1

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setLibraryInitialized(Z)V
    .locals 0

    sput-boolean p1, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->b:Z

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/neopdf/NeoPdfNative;->nativeSetLogLevel(I)V

    return-void
.end method
