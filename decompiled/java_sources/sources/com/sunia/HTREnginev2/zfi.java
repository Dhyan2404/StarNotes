package com.sunia.HTREnginev2;

import com.twelvemonkeys.imageio.metadata.AbstractEntry;
import com.twelvemonkeys.imageio.metadata.iptc.IPTC;

/* loaded from: classes10.dex */
public class zfi extends AbstractEntry {
    public zfi(int i, Object obj) {
        super(Integer.valueOf(i), obj);
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry, com.twelvemonkeys.imageio.metadata.Entry
    public String getFieldName() {
        switch (((Integer) getIdentifier()).intValue()) {
            case 512:
                return "RecordVersion";
            case 537:
                return "Keywords";
            case IPTC.TAG_SPECIAL_INSTRUCTIONS /* 552 */:
                return "Instructions";
            case IPTC.TAG_DATE_CREATED /* 567 */:
                return "DateCreated";
            case 572:
                return "TimeCreated";
            case IPTC.TAG_DIGITAL_CREATION_DATE /* 574 */:
                return "DigitalCreationDate";
            case 575:
                return "DigitalCreationTime";
            case 592:
                return "ByLine";
            case 597:
                return "ByLineTitle";
            case 602:
                return "City";
            case 604:
                return "SubLocation";
            case 607:
                return "StateProvince";
            case 612:
                return "CountryCode";
            case 613:
                return "Country";
            case IPTC.TAG_SOURCE /* 627 */:
                return "Source";
            case IPTC.TAG_COPYRIGHT_NOTICE /* 628 */:
                return "CopyrightNotice";
            case 632:
                return "Caption";
            default:
                return null;
        }
    }

    @Override // com.twelvemonkeys.imageio.metadata.AbstractEntry
    public String getNativeIdentifier() {
        int intValue = ((Integer) getIdentifier()).intValue();
        return String.format("%d:%02d", Integer.valueOf(intValue >> 8), Integer.valueOf(intValue & 255));
    }
}
