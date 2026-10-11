.class public final synthetic Lcom/sunia/HTREnginev2/wwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/EntityResolver;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Ljava/io/StringReader;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wwk;->e:Ljava/util/List;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wwk;->f:Ljava/io/StringReader;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/wwk;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wwk;->e:Ljava/util/List;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wwk;->f:Ljava/io/StringReader;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wwk;->g:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lnet/sf/saxon/functions/ParseXmlFragment;->a(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method
