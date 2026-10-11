.class Lsun/font/Type1Font$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/Type1Font;->readFile(Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/Type1Font;


# direct methods
.method public constructor <init>(Lsun/font/Type1Font;)V
    .locals 0

    iput-object p1, p0, Lsun/font/Type1Font$2;->this$0:Lsun/font/Type1Font;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lsun/font/Type1Font$2;->this$0:Lsun/font/Type1Font;

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
