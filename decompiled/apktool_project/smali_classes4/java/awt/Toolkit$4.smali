.class final Ljava/awt/Toolkit$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/awt/Toolkit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Void;",
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
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/awt/Toolkit$4;->run()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public run()Ljava/lang/Void;
    .locals 1

    :try_start_0
    const-string p0, "sun.awt.resources.awt"

    .line 2
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    .line 3
    invoke-static {v0}, Ljava/util/ResourceBundle$Control;->getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;

    move-result-object v0

    .line 4
    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    move-result-object p0

    invoke-static {p0}, Ljava/awt/Toolkit;->access$202(Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
