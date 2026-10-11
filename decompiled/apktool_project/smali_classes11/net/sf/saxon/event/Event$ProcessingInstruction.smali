.class public Lnet/sf/saxon/event/Event$ProcessingInstruction;
.super Lnet/sf/saxon/event/Event;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessingInstruction"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lnet/sf/saxon/str/UnicodeString;

.field public c:Lnet/sf/saxon/s9api/Location;

.field public d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/Event;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->b:Lnet/sf/saxon/str/UnicodeString;

    iput-object p3, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->c:Lnet/sf/saxon/s9api/Location;

    iput p4, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->d:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Receiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->a:Ljava/lang/String;

    iget-object v1, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->b:Lnet/sf/saxon/str/UnicodeString;

    iget-object v2, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->c:Lnet/sf/saxon/s9api/Location;

    iget p0, p0, Lnet/sf/saxon/event/Event$ProcessingInstruction;->d:I

    invoke-interface {p1, v0, v1, v2, p0}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
