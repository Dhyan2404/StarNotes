.class final Lsun/java2d/loops/GraphicsPrimitive$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/java2d/loops/GraphicsPrimitive;->getTraceOutputFile()Ljava/io/PrintStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/FileOutputStream;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileOutputStream;
    .locals 1

    .line 2
    :try_start_0
    new-instance p0, Ljava/io/FileOutputStream;

    sget-object v0, Lsun/java2d/loops/GraphicsPrimitive;->tracefile:Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/java2d/loops/GraphicsPrimitive$1;->run()Ljava/io/FileOutputStream;

    move-result-object p0

    return-object p0
.end method
