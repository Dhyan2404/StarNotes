.class public Lnet/sf/saxon/event/ComplexContentOutputter$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/str/UniStringConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/ComplexContentOutputter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final e:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public final f:Z

.field public final g:Z

.field public final h:Lnet/sf/saxon/s9api/Location;

.field public final i:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/event/ComplexContentOutputter;ZZLnet/sf/saxon/s9api/Location;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/event/ComplexContentOutputter;",
            "ZZ",
            "Lnet/sf/saxon/s9api/Location;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iput-boolean p2, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->f:Z

    iput-boolean p3, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->g:Z

    iput-object p4, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->h:Lnet/sf/saxon/s9api/Location;

    iput-object p5, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->i:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UniStringConsumer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->h:Lnet/sf/saxon/s9api/Location;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-object p0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->i:Ljava/util/function/Consumer;

    iget-boolean p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->g:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    iget-object p0, p0, Lnet/sf/saxon/event/ComplexContentOutputter$b;->h:Lnet/sf/saxon/s9api/Location;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_0
    return-void
.end method
