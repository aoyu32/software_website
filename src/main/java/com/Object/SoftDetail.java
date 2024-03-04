package com.Object;

public class SoftDetail {

    private String softName;
    private String softCrack;
    private String softSystem;
    private String softVersion;
    private String softSize;
    private String softImg;
    private String softOverview;
    private Integer softComments1;
    private Integer softComments2;
    private String softDownload;

    public SoftDetail() {
    }

    public String getSoftName() {
        return softName;
    }

    public void setSoftName(String softName) {
        this.softName = softName;
    }

    public String getSoftCrack() {
        return softCrack;
    }

    public void setSoftCrack(String softCrack) {
        this.softCrack = softCrack;
    }

    public String getSoftSystem() {
        return softSystem;
    }

    public void setSoftSystem(String softSystem) {
        this.softSystem = softSystem;
    }

    public String getSoftVersion() {
        return softVersion;
    }

    public void setSoftVersion(String softVersion) {
        this.softVersion = softVersion;
    }

    public String getSoftSize() {
        return softSize;
    }

    public void setSoftSize(String softSize) {
        this.softSize = softSize;
    }

    public String getSoftImg() {
        return softImg;
    }

    public void setSoftImg(String softImg) {
        this.softImg = softImg;
    }

    public String getSoftOverview() {
        return softOverview;
    }

    public void setSoftOverview(String softOverview) {
        this.softOverview = softOverview;
    }

    public Integer getSoftComments1() {
        return softComments1;
    }

    public void setSoftComments1(Integer softComments1) {
        this.softComments1 = softComments1;
    }

    public Integer getSoftComments2() {
        return softComments2;
    }

    public void setSoftComments2(Integer softComments2) {
        this.softComments2 = softComments2;
    }

    public String getSoftDownload() {
        return softDownload;
    }

    public void setSoftDownload(String softDownload) {
        this.softDownload = softDownload;
    }

    @Override
    public String toString() {
        return "SoftDetail{" +
                "softName='" + softName + '\'' +
                ", softCrack='" + softCrack + '\'' +
                ", softSystem='" + softSystem + '\'' +
                ", softVersion='" + softVersion + '\'' +
                ", softSize='" + softSize + '\'' +
                ", softImg='" + softImg + '\'' +
                ", softOverview='" + softOverview + '\'' +
                ", softComments1=" + softComments1 +
                ", softComments2=" + softComments2 +
                ", softDownload='" + softDownload + '\'' +
                '}';
    }
}
