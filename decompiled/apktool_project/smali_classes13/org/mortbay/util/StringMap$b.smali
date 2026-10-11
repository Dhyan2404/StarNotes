.class public Lorg/mortbay/util/StringMap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mortbay/util/StringMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic e:Lorg/mortbay/util/StringMap;


# direct methods
.method public constructor <init>(Lorg/mortbay/util/StringMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/mortbay/util/StringMap$b;->e:Lorg/mortbay/util/StringMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/mortbay/util/StringMap;Lorg/mortbay/util/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/mortbay/util/StringMap$b;-><init>(Lorg/mortbay/util/StringMap;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/mortbay/util/StringMap$b;->e:Lorg/mortbay/util/StringMap;

    iget-object p0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lorg/mortbay/util/StringMap$b;->e:Lorg/mortbay/util/StringMap;

    iget-object v0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    iput-object p1, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[:null="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lorg/mortbay/util/StringMap$b;->e:Lorg/mortbay/util/StringMap;

    iget-object p0, p0, Lorg/mortbay/util/StringMap;->_nullValue:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
