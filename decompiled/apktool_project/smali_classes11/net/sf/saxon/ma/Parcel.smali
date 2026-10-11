.class public Lnet/sf/saxon/ma/Parcel;
.super Lnet/sf/saxon/ma/map/SingleEntryMap;
.source "SourceFile"


# static fields
.field public static TYPE:Lnet/sf/saxon/ma/map/RecordTest;

.field public static final parcelKey:Lnet/sf/saxon/value/StringValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lnet/sf/saxon/value/StringValue;

    new-instance v1, Lnet/sf/saxon/str/Twine8;

    const-string v2, "value"

    invoke-direct {v1, v2}, Lnet/sf/saxon/str/Twine8;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    sput-object v0, Lnet/sf/saxon/ma/Parcel;->parcelKey:Lnet/sf/saxon/value/StringValue;

    new-instance v0, Lnet/sf/saxon/ma/map/RecordTest;

    invoke-static {v2}, Lnet/sf/saxon/ma/Parcel;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-static {v2}, Lnet/sf/saxon/ma/Parcel;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/sf/saxon/ma/map/RecordTest;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/Collection;Z)V

    sput-object v0, Lnet/sf/saxon/ma/Parcel;->TYPE:Lnet/sf/saxon/ma/map/RecordTest;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 1

    sget-object v0, Lnet/sf/saxon/ma/Parcel;->parcelKey:Lnet/sf/saxon/value/StringValue;

    invoke-direct {p0, v0, p1}, Lnet/sf/saxon/ma/map/SingleEntryMap;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    return-void
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
