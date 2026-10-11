.class Lsun/awt/FontConfiguration$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/awt/FontConfiguration;->getFontCharsetEncoder(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/CharsetEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/awt/FontConfiguration;

.field final synthetic val$charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lsun/awt/FontConfiguration;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsun/awt/FontConfiguration$2;->this$0:Lsun/awt/FontConfiguration;

    iput-object p2, p0, Lsun/awt/FontConfiguration$2;->val$charsetName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object p0, p0, Lsun/awt/FontConfiguration$2;->val$charsetName:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsun/awt/FontConfiguration$2;->run()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
