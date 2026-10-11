.class public final synthetic Lcom/sunia/HTREnginev2/ly0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ly0;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ly0;->e:Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/openxmlformats/schemas/wordprocessingml/x2006/main/impl/CTBodyImpl;->removeBookmarkEnd(I)V

    return-void
.end method
