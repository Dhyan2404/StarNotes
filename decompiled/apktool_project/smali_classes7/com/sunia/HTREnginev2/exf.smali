.class public final synthetic Lcom/sunia/HTREnginev2/exf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/EventListTypeImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/microsoft/schemas/office/visio/x2012/main/impl/EventListTypeImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/exf;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/EventListTypeImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/exf;->e:Lcom/microsoft/schemas/office/visio/x2012/main/impl/EventListTypeImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lcom/microsoft/schemas/office/visio/x2012/main/EventItemType;

    invoke-virtual {p0, p1, p2}, Lcom/microsoft/schemas/office/visio/x2012/main/impl/EventListTypeImpl;->setEventItemArray(ILcom/microsoft/schemas/office/visio/x2012/main/EventItemType;)V

    return-void
.end method
