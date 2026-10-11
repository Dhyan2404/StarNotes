.class public Lnet/sf/saxon/event/OutputterEvent$Append;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Append"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/Item;

.field public b:Lnet/sf/saxon/s9api/Location;

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->a:Lnet/sf/saxon/om/Item;

    iput-object p2, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->b:Lnet/sf/saxon/s9api/Location;

    iput p3, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->c:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->a:Lnet/sf/saxon/om/Item;

    iget-object v1, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->b:Lnet/sf/saxon/s9api/Location;

    iget p0, p0, Lnet/sf/saxon/event/OutputterEvent$Append;->c:I

    invoke-virtual {p1, v0, v1, p0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
