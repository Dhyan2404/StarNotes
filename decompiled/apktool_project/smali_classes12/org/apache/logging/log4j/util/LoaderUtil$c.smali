.class public Lorg/apache/logging/log4j/util/LoaderUtil$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/LoaderUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/ClassLoader;

.field public final b:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Ljava/net/URL;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "classLoader",
            "url"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/ClassLoader;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public b()Ljava/net/URL;
    .locals 0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lorg/apache/logging/log4j/util/LoaderUtil$c;

    iget-object v2, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    :cond_3
    iget-object p0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    if-eqz p0, :cond_4

    iget-object p1, p1, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    invoke-virtual {p0, p1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_1

    :cond_4
    iget-object p0, p1, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    if-eqz p0, :cond_5

    :goto_1
    return v1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->a:Ljava/lang/ClassLoader;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object p0, p0, Lorg/apache/logging/log4j/util/LoaderUtil$c;->b:Ljava/net/URL;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
