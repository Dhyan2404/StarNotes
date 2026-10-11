.class Lsun/font/Type1Font$T1DisposerRecord$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/font/Type1Font$T1DisposerRecord;->dispose()V
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
.field final synthetic this$0:Lsun/font/Type1Font$T1DisposerRecord;


# direct methods
.method public constructor <init>(Lsun/font/Type1Font$T1DisposerRecord;)V
    .locals 0

    iput-object p1, p0, Lsun/font/Type1Font$T1DisposerRecord$1;->this$0:Lsun/font/Type1Font$T1DisposerRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/font/Type1Font$T1DisposerRecord$1;->this$0:Lsun/font/Type1Font$T1DisposerRecord;

    iget-object v0, v0, Lsun/font/Type1Font$T1DisposerRecord;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lsun/font/Type1Font$T1DisposerRecord$1;->this$0:Lsun/font/Type1Font$T1DisposerRecord;

    iget-object p0, p0, Lsun/font/Type1Font$T1DisposerRecord;->fileName:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
