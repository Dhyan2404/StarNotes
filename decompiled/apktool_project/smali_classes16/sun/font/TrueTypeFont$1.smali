.class Lsun/font/TrueTypeFont$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/TrueTypeFont;->open(Z)Ljava/nio/channels/FileChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/io/RandomAccessFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/font/TrueTypeFont;


# direct methods
.method public constructor <init>(Lsun/font/TrueTypeFont;)V
    .locals 0

    iput-object p1, p0, Lsun/font/TrueTypeFont$1;->this$0:Lsun/font/TrueTypeFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/RandomAccessFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lsun/font/TrueTypeFont$1;->this$0:Lsun/font/TrueTypeFont;

    iget-object p0, p0, Lsun/font/PhysicalFont;->platName:Ljava/lang/String;

    const-string v1, "r"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsun/font/TrueTypeFont$1;->run()Ljava/io/RandomAccessFile;

    move-result-object p0

    return-object p0
.end method
