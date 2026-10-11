.class public Lnet/sf/saxon/ma/map/KeyValuePair;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public key:Lnet/sf/saxon/value/AtomicValue;

.field public value:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    iput-object p2, p0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method
