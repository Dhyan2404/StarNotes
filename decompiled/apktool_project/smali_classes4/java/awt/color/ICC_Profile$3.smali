.class Ljava/awt/color/ICC_Profile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/awt/color/ICC_Profile;->activateDeferredProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/awt/color/ICC_Profile;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/awt/color/ICC_Profile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljava/awt/color/ICC_Profile$3;->this$0:Ljava/awt/color/ICC_Profile;

    iput-object p2, p0, Ljava/awt/color/ICC_Profile$3;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 1

    .line 2
    iget-object p0, p0, Ljava/awt/color/ICC_Profile$3;->val$fileName:Ljava/lang/String;

    invoke-static {p0}, Ljava/awt/color/ICC_Profile;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile$3;->run()Ljava/io/FileInputStream;

    move-result-object p0

    return-object p0
.end method
