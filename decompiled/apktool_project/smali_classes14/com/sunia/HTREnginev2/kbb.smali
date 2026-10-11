.class public final synthetic Lcom/sunia/HTREnginev2/kbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideLayoutIdListImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideLayoutIdListImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/kbb;->e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideLayoutIdListImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/kbb;->e:Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideLayoutIdListImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayoutIdListEntry;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/presentationml/x2006/main/impl/CTSlideLayoutIdListImpl;->setSldLayoutIdArray(ILorg/openxmlformats/schemas/presentationml/x2006/main/CTSlideLayoutIdListEntry;)V

    return-void
.end method
