.class Lsun/awt/FontConfiguration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/awt/FontConfiguration;->fontFilesArePresent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/awt/FontConfiguration;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun/awt/FontConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/FontConfiguration$1;->this$0:Lsun/awt/FontConfiguration;

    iput-object p2, p0, Lsun/awt/FontConfiguration$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 1

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lsun/awt/FontConfiguration$1;->val$fileName:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 4
    :catch_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/awt/FontConfiguration$1;->run()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
