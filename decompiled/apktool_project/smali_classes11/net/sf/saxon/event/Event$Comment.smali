.class public Lnet/sf/saxon/event/Event$Comment;
.super Lnet/sf/saxon/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Comment"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/str/UnicodeString;

.field public b:Lnet/sf/saxon/s9api/Location;

.field public c:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/Event;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/Event$Comment;->a:Lnet/sf/saxon/str/UnicodeString;

    iput-object p2, p0, Lnet/sf/saxon/event/Event$Comment;->b:Lnet/sf/saxon/s9api/Location;

    iput p3, p0, Lnet/sf/saxon/event/Event$Comment;->c:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Receiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/Event$Comment;->a:Lnet/sf/saxon/str/UnicodeString;

    iget-object v1, p0, Lnet/sf/saxon/event/Event$Comment;->b:Lnet/sf/saxon/s9api/Location;

    iget p0, p0, Lnet/sf/saxon/event/Event$Comment;->c:I

    invoke-interface {p1, v0, v1, p0}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
