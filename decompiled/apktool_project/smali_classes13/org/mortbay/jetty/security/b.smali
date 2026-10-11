.class public Lorg/mortbay/jetty/security/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic e:Lorg/mortbay/jetty/security/HashUserRealm;


# direct methods
.method public constructor <init>(Lorg/mortbay/jetty/security/HashUserRealm;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/jetty/security/b;->e:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    :try_start_0
    iget-object p0, p0, Lorg/mortbay/jetty/security/b;->e:Lorg/mortbay/jetty/security/HashUserRealm;

    invoke-static {p0}, Lorg/mortbay/jetty/security/HashUserRealm;->f(Lorg/mortbay/jetty/security/HashUserRealm;)Lorg/mortbay/resource/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mortbay/resource/Resource;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return p1
.end method
