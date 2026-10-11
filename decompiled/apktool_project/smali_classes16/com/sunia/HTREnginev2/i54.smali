.class public final synthetic Lcom/sunia/HTREnginev2/i54;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFtnEdnImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFtnEdnImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/i54;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFtnEdnImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/i54;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFtnEdnImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAltChunk;

    invoke-virtual {p0, p1, p2}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTFtnEdnImpl;->setAltChunkArray(ILorg/openxmlformats/schemas/wordprocessingml/x2006/main/CTAltChunk;)V

    return-void
.end method
