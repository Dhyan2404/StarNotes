.class public Lcom/sagittarius/v6/A;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a1(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sagittarius/v6/b/h;->a(Landroid/content/Context;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static a2([Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sagittarius/v6/b/h;->a(Landroid/content/Context;[Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static a3(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sagittarius/v6/StubApplication;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sagittarius/v6/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static a4(Ldalvik/system/DexFile;)Ljava/util/Enumeration;
    .locals 1

    invoke-static {p0}, Lcom/sagittarius/v6/b/h;->a(Ldalvik/system/DexFile;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static native n1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native n2(Landroid/content/Context;)V
.end method

.method public static native n3(Landroid/content/Context;)V
.end method
