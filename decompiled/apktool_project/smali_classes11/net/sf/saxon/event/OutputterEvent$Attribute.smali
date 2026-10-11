.class public Lnet/sf/saxon/event/OutputterEvent$Attribute;
.super Lnet/sf/saxon/event/OutputterEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/sf/saxon/event/OutputterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/om/NodeName;

.field public b:Lnet/sf/saxon/type/SimpleType;

.field public c:Ljava/lang/String;

.field public d:Lnet/sf/saxon/s9api/Location;

.field public e:I


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/event/OutputterEvent;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->a:Lnet/sf/saxon/om/NodeName;

    iput-object p2, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->b:Lnet/sf/saxon/type/SimpleType;

    iput-object p3, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->d:Lnet/sf/saxon/s9api/Location;

    iput p5, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->e:I

    return-void
.end method


# virtual methods
.method public replay(Lnet/sf/saxon/event/Outputter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v1, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->a:Lnet/sf/saxon/om/NodeName;

    iget-object v2, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->b:Lnet/sf/saxon/type/SimpleType;

    iget-object v3, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->c:Ljava/lang/String;

    iget-object v4, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->d:Lnet/sf/saxon/s9api/Location;

    iget v5, p0, Lnet/sf/saxon/event/OutputterEvent$Attribute;->e:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/Outputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
