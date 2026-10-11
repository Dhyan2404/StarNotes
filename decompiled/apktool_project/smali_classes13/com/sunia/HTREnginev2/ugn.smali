.class public final synthetic Lcom/sunia/HTREnginev2/ugn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ugn;->e:Ljava/util/List;

    iput p2, p0, Lcom/sunia/HTREnginev2/ugn;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/ugn;->g:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ugn;->e:Ljava/util/List;

    iget v1, p0, Lcom/sunia/HTREnginev2/ugn;->f:I

    iget p0, p0, Lcom/sunia/HTREnginev2/ugn;->g:I

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    invoke-static {v0, v1, p0, p1, p2}, Lorg/apache/poi/xwpf/usermodel/TextboxShape;->j(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method
