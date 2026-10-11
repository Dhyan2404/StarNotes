.class public abstract Lorg/apache/poi/hslf/record/RecordAtom;
.super Lorg/apache/poi/hslf/record/Record;
.source "SourceFile"


# static fields
.field private static final DEFAULT_MAX_RECORD_LENGTH:I = 0xf4240

.field private static MAX_RECORD_LENGTH:I = 0xf4240


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/hslf/record/Record;-><init>()V

    return-void
.end method

.method public static getMaxRecordLength()I
    .locals 1

    sget v0, Lorg/apache/poi/hslf/record/RecordAtom;->MAX_RECORD_LENGTH:I

    return v0
.end method

.method public static setMaxRecordLength(I)V
    .locals 0

    sput p0, Lorg/apache/poi/hslf/record/RecordAtom;->MAX_RECORD_LENGTH:I

    return-void
.end method


# virtual methods
.method public getChildRecords()[Lorg/apache/poi/hslf/record/Record;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAnAtom()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
