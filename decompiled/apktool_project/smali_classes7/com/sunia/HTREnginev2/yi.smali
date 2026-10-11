.class public final synthetic Lcom/sunia/HTREnginev2/yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/AuthorListTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/AuthorListTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/yi;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/AuthorListTypeImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/yi;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/AuthorListTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/AuthorListTypeImpl;->getAuthorEntryArray(I)Lcom/microsoft/schemas/office/visio/x2012/main/AuthorEntryType;

    move-result-object p0

    return-object p0
.end method
