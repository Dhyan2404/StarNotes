.class public final synthetic Lcom/sunia/HTREnginev2/m0h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/apache/poi/util/GenericRecordXmlWriter;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/m0h;->e:Lorg/apache/poi/util/GenericRecordXmlWriter;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/m0h;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/m0h;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/m0h;->e:Lorg/apache/poi/util/GenericRecordXmlWriter;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/m0h;->f:Ljava/lang/String;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/m0h;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p0, p1}, Lorg/apache/poi/util/GenericRecordXmlWriter;->f(Lorg/apache/poi/util/GenericRecordXmlWriter;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map$Entry;)V

    return-void
.end method
