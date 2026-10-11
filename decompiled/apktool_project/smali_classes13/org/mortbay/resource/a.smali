.class public Lorg/mortbay/resource/a;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lorg/mortbay/resource/JarResource;


# direct methods
.method public constructor <init>(Lorg/mortbay/resource/JarResource;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/mortbay/resource/a;->e:Lorg/mortbay/resource/JarResource;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/mortbay/util/IO;->getClosedStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
