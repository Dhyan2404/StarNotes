.class public final synthetic Lcom/sunia/HTREnginev2/dc6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTOutlineViewSlideListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTOutlineViewSlideListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/dc6;->e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTOutlineViewSlideListImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/dc6;->e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTOutlineViewSlideListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTOutlineViewSlideListImpl;->getSldArray(I)Lorg/openxmlformats/schemas/presentationml/x2006/main/CTOutlineViewSlideEntry;

    move-result-object p0

    return-object p0
.end method
